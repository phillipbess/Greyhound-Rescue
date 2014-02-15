package gpago.view.servlet;

import gpago.model.ModelFacade;
import gpago.model.entity.Greyhound;

import java.util.List;
import java.util.logging.Logger;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class SampleDataInitializer
 */
@WebServlet("/SampleDataInitializer")
public class SampleDataInitializer extends HttpServlet {
	private static final Logger logger = Logger.getLogger(SampleDataInitializer.class.getName());

	private static final int RECORDS_TO_GENERATE = 50;

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
		
		// Only add sample data if no greyhound records currently exist in the database.
		if (greyhoundCountBeforeTest == 0) {
			logger.info("SampleDataInitializer - generating sample data records");
			
			for (int x = 0; x < RECORDS_TO_GENERATE; x++)
				createGreyhound(facade, x);
			
			// Commit all of the managed entity to the database.
			// Note, in JPA persisting an entity makes it managed but it is not
			// written to the database until the transaction is committed.
			facade.commitTransaction();
			
			List<Greyhound> greyhounds = facade.getAllGreyhounds();
			
			logger.info("SampleDataInitializer - " + greyhounds.size() + " greyhound records were generated.");
		} else {
			logger.info("SampleDataInitializer - sample data was not generated because existing records were found in the database.");
		}
	}
	
	private Greyhound createGreyhound(ModelFacade facade, int idNum) {
		Greyhound g = new Greyhound("Greyhound " + idNum, "This is a sample greyhound record for Greyhound " + idNum);
		facade.persistEntity(g);
		return g;
	}
}