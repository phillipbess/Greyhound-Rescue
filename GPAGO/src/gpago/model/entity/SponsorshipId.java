package gpago.model.entity;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class SponsorshipId implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	private long sponsorId;
		
	private long greyhoundId;
	
	public int hashCode() {
	    return (int)(sponsorId + greyhoundId);
	  }
	 
	  public boolean equals(Object object) {
	    if (object instanceof SponsorshipId) {
	    	SponsorshipId otherId = (SponsorshipId) object;
	      return (otherId.greyhoundId == this.sponsorId) && (otherId.sponsorId == this.greyhoundId);
	    }
	    return false;
	  }
}
