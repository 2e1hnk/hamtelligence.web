package hamtelligence.web.servlet;

import static com.mongodb.client.model.Filters.eq;
import static org.bson.codecs.configuration.CodecRegistries.fromProviders;
import static org.bson.codecs.configuration.CodecRegistries.fromRegistries;

import java.io.IOException;
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
@WebServlet("/station")
public class StationView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MongoClient mongoClient;
	private MongoCollection<Station> collection;

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
		
		System.out.println(station.getCallsign());

		

		//System.out.println(station.getCallsign());

		request.setAttribute("callsign", station.getCallsign());
		request.setAttribute("locations", station.getLocations());
		request.setAttribute("station", station);
		
		Map<String, Integer> modeUse = new HashMap<String, Integer>();
		Map<String, Integer> bandUse = new HashMap<String, Integer>();
		
		for ( Activity spot : station.getActivity() ) {
			if ( !modeUse.keySet().contains(spot.getMode()) ) {
				modeUse.put(spot.getMode(), 0);
			}
			modeUse.put(spot.getMode(), modeUse.get(spot.getMode()) + 1);
			
			if ( !bandUse.keySet().contains(spot.getBand()) ) {
				bandUse.put(spot.getBand(), 0);
			}
			bandUse.put(spot.getBand(), bandUse.get(spot.getBand()) + 1);
			
			
		}
		
		request.setAttribute("modeUse", modeUse);
		
		// request.setAttribute("time", new Date());
		// request.setAttribute("time", new Date());

		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/templates/station.jsp");
		view.forward(request, response);

		/*
		 * response.setContentType("text/plain"); PrintWriter out =
		 * response.getWriter(); if (session.isNew()) { count++; }
		 * out.println("This site has been accessed " + count + " times.");
		 */
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
