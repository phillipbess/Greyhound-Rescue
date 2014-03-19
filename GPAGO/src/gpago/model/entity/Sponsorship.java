package gpago.model.entity;

import java.io.Serializable;

import javax.persistence.*;


/**
 * Entity implementation class for Entity: Sponsorship
 *
 */
@Entity
@NamedQueries({
	@NamedQuery(name = "Sponsorship.findAll", query = "SELECT e FROM Sponsorship e"),
	@NamedQuery(name = "Sponsorship.findById", query = "SELECT e FROM Sponsorship e WHERE e.id = :id")
})
public class Sponsorship implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private Sponsor sponsor;
	
	private Greyhound greyhound;
	
	
	public Sponsorship() {
		super();
	}
	
	public Sponsorship(Sponsor sponsor, Greyhound greyhound){
		this();
		setSponsor(sponsor);
		setGreyhound(greyhound);
	}
	
	public Sponsorship(Long id, Sponsor sponsor, Greyhound greyhound){
		this(sponsor, greyhound);
		this.id = id;
	}
	
	public Long getId() {
		return this.id;
	}

	public Sponsor getSponsor() {
		return sponsor;
	}

	public void setSponsor(Sponsor sponsor) {
		this.sponsor = sponsor;
	}

	public Greyhound getGreyhound() {
		return greyhound;
	}

	public void setGreyhound(Greyhound greyhound) {
		this.greyhound = greyhound;
	}

}
