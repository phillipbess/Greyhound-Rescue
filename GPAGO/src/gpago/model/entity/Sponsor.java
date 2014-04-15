package gpago.model.entity;

import java.io.Serializable;

import javax.persistence.*;


/**
 * Entity implementation class for Entity: Sponsor
 *
 */
@Entity
@NamedQueries({
	@NamedQuery(name = "Sponsor.findAll", query = "SELECT e FROM Sponsor e"),
	@NamedQuery(name = "Sponsor.findAvailable", query = "SELECT e FROM Sponsor e WHERE e.greyhound = null"),
	@NamedQuery(name = "Sponsor.findById", query = "SELECT e FROM Sponsor e WHERE e.id = :id")
})
public class Sponsor implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id; 
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="GREYHOUND_ID")
	private Greyhound greyhound;
	
	private String name;
		
	public Sponsor() {
		super();
	}
	
	public Sponsor(String name){
		this();
		this.name = name;
	}
	
	public Long getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Greyhound getGreyhound() {
		return greyhound;
	}

	public void setGreyhound(Greyhound greyhound) {
		this.greyhound = greyhound;
	}
}
