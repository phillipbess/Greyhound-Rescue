package gpago.view;

import gpago.model.entity.Sponsor;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang3.StringUtils;

/**
 * The SponsorFormBean provides specific information needed by the jsps to display
 * details of a sponsor .  This class is primarily a wrapper around the Sponsor entity object.
 * 
 */
public class SponsorFormBean {
	private static final Logger logger = Logger.getLogger(SponsorFormBean.class.getName());
	
	/**
	 * A reference to the Sponsor object being added or edited.
	 */
	private Sponsor sponsor;
	
	public SponsorFormBean(Sponsor sponsor) {
		this.sponsor = sponsor;
	}
	
	public SponsorFormBean(HttpServletRequest request, Sponsor sponsor) {
		this.sponsor = sponsor;
		initFromRequest(request, sponsor);
	}
	
	private void initFromRequest(HttpServletRequest request, Sponsor sponsor) {
		if (request.getParameter("name")!=null){
			sponsor.setName(request.getParameter("name"));
		}
		
	}
	
	/**
	 * Determines if the state contained by the bean is valid.
	 * @return true if the state contained by the bean is valid, false otherwise.
	 */
	public boolean isValid() {
		if (getNameValidationText().length()>0){
			return false;
		}
		return true;
	}
	
	public String getNameValidationText() {
		if (StringUtils.isEmpty(sponsor.getName())){
			return "Required";
		}
		return "";
	}
	
	public String toString() {
		return sponsor.toString();
	}
	
	public Sponsor getSponsor() {
		return sponsor;
	}
	
	public Long getId() {
		return sponsor.getId();
	}
	
	public String getName() {
		return sponsor.getName();
	}
	
	public void setName(String name) {
		sponsor.setName(name);
	}
}
