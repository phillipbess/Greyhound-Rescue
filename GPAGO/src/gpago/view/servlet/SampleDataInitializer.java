package gpago.view.servlet;

import gpago.model.ModelFacade;
import gpago.model.entity.Greyhound;
import gpago.model.entity.Sponsor;

import java.sql.Date;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class SampleDataInitializer
 */
@WebServlet("/SampleDataInitializer")
public class SampleDataInitializer extends HttpServlet {
	private static final Logger logger = Logger
			.getLogger(SampleDataInitializer.class.getName());

	private static final int RECORDS_TO_GENERATE = 25;

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SampleDataInitializer() {
		super();
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		logger.info("SampleDataInitializer Servlet init called");
		logger.warning("********** The SampleDataInitializer servlet should only be enabled for development **********");

		generateSampleData();
	}

	private void generateSampleData() {
		ModelFacade facade = new ModelFacade();

		// Record the number of Greyhound records before this test.
		int greyhoundCountBeforeTest = facade.getAllGreyhounds().size();

		// Only add sample data if no greyhound records currently exist in the
		// database.
		if (greyhoundCountBeforeTest == 0) {
			logger.info("SampleDataInitializer - generating sample data records");

			for (int x = 1; x <= RECORDS_TO_GENERATE; x++)
				createSponsoredGreys(facade, x);

			// Create additional sponsors that are not associated with a greyhound yet.
			for (int x = 1; x <= 20; x++)
				createSponsor(facade, "Another Sponsor " + x);
			
			List<Greyhound> greyhounds = facade.getAllGreyhounds();

			logger.info("SampleDataInitializer - " + greyhounds.size()
					+ " greyhound records were generated.");
		} else {
			logger.info("SampleDataInitializer - sample data was not generated because existing records were found in the database.");
		}
	}
	
	private Greyhound createSponsoredGreys(ModelFacade facade, int idNum){
		String greyhound_name = "Greyhound " + idNum;
		
		Sponsor sponsor1 = createSponsor(facade, "Sponsor 1 for greyhound : " + greyhound_name);
		Sponsor sponsor2 = createSponsor(facade, "Sponsor 2 for greyhound : " + greyhound_name);
		
		Greyhound g = new Greyhound(greyhound_name, new Date(1900000),
				"Male", 72, "Light Ticked Brindle", true, true, "A very friendly grey!",
				"A very happy grey", "Kennel", "Available", null);

		facade.saveGreyhound(g);
		
		facade.addSponsorToGreyhound(g.getId(), sponsor1.getId());
		facade.addSponsorToGreyhound(g.getId(), sponsor2.getId());
		
		//g.addSponsor(sponsor1);
		//g.addSponsor(sponsor2);
		
		return g;
	}
	
	private Sponsor createSponsor(ModelFacade facade, String name) {
		Sponsor sponsor = new Sponsor(name);
		
		facade.saveSponsor(sponsor);
		
		return sponsor;
	}
	
	
}