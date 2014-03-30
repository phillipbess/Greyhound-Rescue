package gpago.model.entity;

import java.io.Serializable;

import javax.persistence.*;


/**
 * Entity implementation class for Entity: Sponsorship
 *
 */
@Entity
@Table(name="sponsorship")
@IdClass(SponsorshipId.class)
@NamedQueries({
	@NamedQuery(name = "Sponsorship.findAll", query = "SELECT e FROM Sponsorship e"),
	@NamedQuery(name = "Sponsorship.findById", query = "SELECT e FROM Sponsorship e WHERE e.id = :id")
})
public class Sponsorship implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Id
	private long sponsorId;
	
	@Id
	private long greyhoundId;
	
	@Column(name="AMOUNT")
	private double amount;
	
	@ManyToOne
	@PrimaryKeyJoinColumn(name="SPONSORID", referencedColumnName="ID")
	private Sponsor sponsor;
	
	@ManyToOne
	@PrimaryKeyJoinColumn(name="GREYHOUNDID", referencedColumnName="ID")
	private Greyhound greyhound;

	public Sponsorship() {
		super();
	}
	
	public Sponsorship(Sponsor sponsor, Greyhound greyhound){
		this();
		setSponsor(sponsor);
		setGreyhound(greyhound);
	}
	
	public Sponsorship(Sponsor sponsor, Greyhound greyhound, double amount){
		this();
		this.sponsorId = sponsor.getId();
		this.greyhoundId  = greyhound.getId();
		this.greyhound = greyhound;
		this.sponsor = sponsor;
		this.amount = amount;
	}
	
	public Sponsorship(Long id, Sponsor sponsor, Greyhound greyhound){
		this(sponsor, greyhound);
		this.id = id;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
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
	
	public Long getId(){
		return this.id;
	}
}
