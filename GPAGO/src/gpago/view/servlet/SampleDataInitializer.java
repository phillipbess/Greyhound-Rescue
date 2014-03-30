package gpago.view.servlet;

import gpago.model.ModelFacade;
import gpago.model.entity.Greyhound;
import gpago.model.entity.Sponsor;
import gpago.model.entity.Sponsorship;

import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.WritableRaster;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.imageio.ImageIO;
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

		// Only add sample data if no greyhound records currently exist in the
		// database.
		if (greyhoundCountBeforeTest == 0) {
			logger.info("SampleDataInitializer - generating sample data records");

			for (int x = 1; x <= RECORDS_TO_GENERATE; x++)
				createSponsoredGreys(facade, x);

			List<Greyhound> greyhounds = facade.getAllGreyhounds();

			logger.info("SampleDataInitializer - " + greyhounds.size()
					+ " greyhound records were generated.");
		} else {
			logger.info("SampleDataInitializer - sample data was not generated because existing records were found in the database.");
		}
	}
	
	private Greyhound createSponsoredGreys(ModelFacade facade, int idNum){
		Greyhound greyhound = createGreyhound(facade, idNum);
		Sponsor sponsor = createSponsor(facade, idNum);
		List<Sponsorship> sponsorships = createSponsorship(facade, greyhound, sponsor);
		
		//update greyhound 
		updateGreyhound(facade, greyhound, sponsorships);
		//update sponsor
		updateSponsor(facade, sponsor, sponsorships);
		
		return greyhound;
	}

	private Greyhound createGreyhound(ModelFacade facade, int idNum) {
		/*try {*/
			//byte[] firstImage = extractBytes();
			//List<Sponsorship> sponsors = new ArrayList<Sponsorship>();
			//sponsors.add(new Sponsorship(new Sponsor("John"), (long) idNum));

			Greyhound g = new Greyhound("Greyhound " + idNum, new Date(1900000),
					"Male", 72, "brown", true, true, "A very friendly grey!",
					"A very happy grey", null);
			facade.saveGreyhound(g);
			//facade.saveSponsorships(sponsors);
			return g;
		/*} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}*/
	}
	
	private Sponsor createSponsor(ModelFacade facade, int idNum){
		Sponsor sponsor = new Sponsor("sponsor" + idNum);
		
		facade.saveSponsor(sponsor);
		return sponsor;
	}
	
	private List<Sponsorship> createSponsorship(ModelFacade facade, Greyhound greyhound, Sponsor sponsor){
		List<Sponsorship> sponsorships = new ArrayList<Sponsorship>();
		for(int i = 0; i < 2; i++){
			Sponsorship sponsorship = new Sponsorship(sponsor, greyhound, 10.00 + i);
			sponsorships.add(sponsorship);
		}		
		
		facade.saveSponsorships((ArrayList<Sponsorship>) sponsorships);
		return sponsorships;
	}
	
	private void updateGreyhound(ModelFacade facade, Greyhound greyhound, List<Sponsorship> sponsors){
		greyhound.setSponsors(sponsors);
		
		facade.saveGreyhound(greyhound);
	}
	
	private void updateSponsor(ModelFacade facade, Sponsor sponsor, List<Sponsorship> sponsors){
		sponsor.setSponsoredGreys(sponsors);
		
		facade.saveSponsor(sponsor);
	}

	private byte[] extractBytes() throws IOException {
		File imgPath = new File("C://Greys/BackwoodJanet1.jpg");
		BufferedImage bufferedImage = ImageIO.read(imgPath);

		WritableRaster raster = bufferedImage.getRaster();
		DataBufferByte data = (DataBufferByte) raster.getDataBuffer();
		return (data.getData());
	}
}