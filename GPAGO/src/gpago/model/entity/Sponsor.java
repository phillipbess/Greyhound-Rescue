package gpago.model.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;


/**
 * Entity implementation class for Entity: Sponsor
 *
 */
@Entity
@NamedQueries({
	@NamedQuery(name = "Sponsor.findAll", query = "SELECT e FROM Sponsor e"),
	@NamedQuery(name = "Sponsor.findById", query = "SELECT e FROM Sponsor e WHERE e.id = :id")
})
public class Sponsor implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id; 
	
	@OneToMany(mappedBy="sponsor")
	private List<Sponsorship> sponsoredGreys;
	
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

	public List<Sponsorship> getSponsoredGreys() {
		return sponsoredGreys;
	}

	public void setSponsoredGreys(List<Sponsorship> sponsoredGreys) {
		this.sponsoredGreys = sponsoredGreys;
	}
	
	
}
