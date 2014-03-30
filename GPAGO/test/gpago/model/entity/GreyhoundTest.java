package gpago.model.entity;

import org.junit.Assert;
import org.junit.Test;

/*
 * Test class for the Greyhound entity class.
 */
public class GreyhoundTest {

	@Test
	public void testGetSetName() {
		// It is questionable if we need to test getters & setters but for now if can't hurt.
		Greyhound greyhound = new Greyhound();
		greyhound.setName("Name");
		Assert.assertEquals("Name is not as expected.", "Name", greyhound.getName());
	}

	@Test
	public void testGetSetIsCatFriendly() {
		// It is questionable if we need to test getters & setters but for now if can't hurt.
		
		Greyhound greyhound = new Greyhound();
		greyhound.setCatFriendly(true);
		Assert.assertEquals("isCatFriendly is not as expected.", true, greyhound.isCatFriendly());
		
		greyhound.setCatFriendly(false);
		Assert.assertEquals("isCatFriendly is not as expected.", false, greyhound.isCatFriendly());
	}
}
