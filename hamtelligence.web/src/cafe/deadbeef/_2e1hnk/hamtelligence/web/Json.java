package cafe.deadbeef._2e1hnk.hamtelligence.web;

import static com.mongodb.client.model.Filters.eq;
import static org.bson.codecs.configuration.CodecRegistries.fromProviders;
import static org.bson.codecs.configuration.CodecRegistries.fromRegistries;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.bson.codecs.configuration.CodecProvider;
import org.bson.codecs.configuration.CodecRegistry;
import org.bson.codecs.pojo.PojoCodecProvider;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.mongodb.AggregationOutput;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Accumulators;
import com.mongodb.client.model.Aggregates;
import com.mongodb.client.model.Filters;

import scraper.Scraper;
import scraper.station.Activity;
import scraper.station.Station;

/**
 * Servlet implementation class FileCounter
 */
@WebServlet("/json")
public class Json extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MongoClient mongoClient;
	private MongoCollection<Station> collection;
	
	private boolean pretty = false;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Set a cookie for the user, so that the counter does not increate
		// every time the user press refresh
		HttpSession session = request.getSession(true);
		// Set the session valid for 5 secs
		session.setMaxInactiveInterval(5);

		//String stationCallsign = request.getPathInfo().substring(1);
		//String stationCallsign = request.getParameter("callsign");
		//String stationCallsign = "JP3YIY";
		
		Station station;
		if ( !request.getParameterMap().keySet().contains("callsign") ) {
			station = collection.aggregate(Arrays.asList(Aggregates.sample(1))).first();
			
		} else {
			String stationCallsign = request.getParameter("callsign");
			station = collection.find(eq("callsign", stationCallsign)).first();
		}
		
		if ( request.getParameterMap().keySet().contains("pretty") ) {
			this.pretty = true;
		}
		
		System.out.println(station.getCallsign());
		
		// Set response content type
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		  
		if ( pretty ) {
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			String json = gson.toJson(station);
			out.println(json);
		} else {
			out.println(station.toJson());
		}
	}

	@Override
	public void init() throws ServletException {
		mongoClient = new MongoClient();

		// create codec registry for POJOs

		CodecProvider pojoCodecProvider = PojoCodecProvider.builder().register("scraper.station").build();
		CodecRegistry pojoCodecRegistry = fromRegistries(MongoClient.getDefaultCodecRegistry(),
				fromProviders(pojoCodecProvider));

		// get handle to "hamtelligence" database
		MongoDatabase database = mongoClient.getDatabase("hamtelligence").withCodecRegistry(pojoCodecRegistry);

		// get a handle to the "stations" collection
		collection = database.getCollection("stations", Station.class);

	}

	public void destroy() {
		super.destroy();
		try {
			mongoClient.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
