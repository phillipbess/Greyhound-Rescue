package gpago.view;

import java.util.Map;
import java.util.logging.Logger;

import org.apache.commons.lang3.StringUtils;

import gpago.model.entity.Greyhound;

/**
 * The greyhoundFormBean provides specific information needed to display the
 * details of a greyhound.  This class is primarily a wrapper around a
 * Greyhound entity object.
 * 
 */
public class GreyhoundFormBean {
	private static final Logger logger = Logger.getLogger(GreyhoundFormBean.class.getName());

	/**
	 * A reference to the greyhound object being added or edited.
	 */
	private Greyhound greyhound;
	
	public GreyhoundFormBean(Greyhound greyhound) {
		this.greyhound = greyhound;
	}
	
	/**
	 * Create and initialize a GrehoundFormBean, including the contained Greyhound object
	 * from properties.
	 * 
	 * @param greyhoundProperties
	 * @param operation
	 */
	public GreyhoundFormBean(Map<String, String[]> greyhoundProperties) {
		Long id = getLongProperty(greyhoundProperties, "id");
		String name = getStringProperty(greyhoundProperties, "name");
		String description = getStringProperty(greyhoundProperties, "description");
		
		greyhound = new Greyhound(id, name, description);
		
		/*try {
			BeanUtils.populate(greyhound, greyhoundProperties);
		} catch (Exception ex) {
			logger.log(Level.SEVERE, "Error while initializing Greyhound object from properties.", ex);
			
		}*/
	}
	
	private String getStringProperty(Map<String, String[]> greyhoundProperties, String name) {
		String[] value =  greyhoundProperties.get(name);
		if ((value!=null) && (value.length>0))
			return value[0];
		return null;
	}
	
	private Long getLongProperty(Map<String, String[]> greyhoundProperties, String name) {
		String[] strValue =  greyhoundProperties.get(name);
		if ((strValue!=null) && (strValue.length>0)) {
			try {
				return Long.valueOf(strValue[0]);
			} catch (Throwable ex) {
			}
		}
		return null;
	}
	
	/**
	 * Determines if the state contained by the bean is valid.
	 * @return true if the state contained by the bean is valid, false otherwise.
	 */
	public boolean isValid() {
		if (getNameValidationText().length()>0)
			return false;
		return true;
	}
	
	public String toString() {
		return greyhound.toString();
	}
	
	public Greyhound getGreyhound() {
		return greyhound;
	}
	
	public Long getId() {
		return greyhound.getId();
	}
	
	public String getName() {
		return greyhound.getName();
	}
	
	public String getNameValidationText() {
		if (StringUtils.isEmpty(greyhound.getName()))
			return "A name must be entered";
		return "";
	}

	public void setName(String name) {
		greyhound.setName(name);
	}
	
	public String getDescription() {
		return greyhound.getDescription();
	}

	public void setDescription(String description) {
		greyhound.setDescription(description);
	}
	
	public boolean isCatFriendly() { 
		return greyhound.isCatFriendly();
	}

	public void setIsCatFriendly(Boolean isCatFriendly) {
		greyhound.setIsCatFriendly(isCatFriendly);
	}
}
