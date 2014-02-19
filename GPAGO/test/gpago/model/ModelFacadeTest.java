package gpago.model;

import gpago.model.entity.Greyhound;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

/**
 * Test for ModelFacade class.  This test exercises persistence of entity objects to the
 * database. 
 *
 */
public class ModelFacadeTest {

	@Test
	public void testGreyhoundPersistence() {
		ModelFacade facade = new ModelFacade();

		// Record the number of Greyhound records before this test.
		int greyhoundCountBeforeTest = facade.getAllGreyhounds().size();
		
		// Create a new greyhound instance and persist it.
		Greyhound g = new Greyhound();
		g.setName("Test Greyhound");
		facade.persistEntity(g);
		facade.commitTransaction();
		
		List<Greyhound> greyhounds = facade.getAllGreyhounds();
		
		Assert.assertEquals("The expected number of greyhounds were not returned.", 1 + greyhoundCountBeforeTest, greyhounds.size());
		
		Greyhound greyhound = facade.getGreyhound(g.getId());
		
		Assert.assertNotNull("The test greyhound was not found in the database.", greyhounds);
		Assert.assertEquals("The test greyhound was not found in the database.", "Test Greyhound", greyhound.getName());
		
		facade.removeGreyhound(greyhound);
		facade.commitTransaction();
		
		greyhounds = facade.getAllGreyhounds();
		
		Assert.assertEquals("The test greyhound was not removed from the database.", greyhoundCountBeforeTest, greyhounds.size());
		greyhound = facade.getGreyhound(g.getId());
		Assert.assertNull("The test greyhound was not removed from the database.", greyhound);
	}
}
