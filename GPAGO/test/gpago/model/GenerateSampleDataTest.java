package gpago.model;

import gpago.model.entity.Greyhound;

import java.sql.Date;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;

/**
 * The purpose of this test class is to generate sample data in the database to aid development.
 *   
 *
 */
public class GenerateSampleDataTest {
	
	private static final int RECORDS_TO_GENERATE = 50;

	@Test
	public void testGreyhoundPersistence() {
		ModelFacade facade = new ModelFacade();

		// Record the number of Greyhound records before this test.
		int greyhoundCountBeforeTest = facade.getAllGreyhounds().size();
		
		// Only add sample data if no greyhound records currently exist in the database.
		if (greyhoundCountBeforeTest == 0) {
			for (int x = 0; x < RECORDS_TO_GENERATE; x++){
				createGreyhound(facade, x);
			}				
			
			// Commit all of the managed entity to the database.
			// Note, in JPA persisting an entity makes it managed but it is not
			// written to the database until the transaction is committed.
			facade.commitTransaction();
			
			List<Greyhound> greyhounds = facade.getAllGreyhounds();
			Assert.assertEquals("The expected number of sample greyhounds were not created.", RECORDS_TO_GENERATE, greyhounds.size());
			
			System.out.println("\nGreyhounds:");
			for (Greyhound greyhound: greyhounds)
				System.out.println("\t\t" + greyhound + ", " + greyhound.getDescription());
		}
	}
	
	private Greyhound createGreyhound(ModelFacade facade, int idNum) {
		Greyhound g = new Greyhound("Greyhound " + idNum, "Sample greyhound record for Greyhound " + idNum,
				new Date(1900000), "Male", 72, "brown", true, true, "A very friendly grey!", "A very happy grey",
				new String[]{"Sponsor1", "Sponsor2"});
		facade.persistEntity(g);
		return g;
	}
}
