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
	@NamedQuery(name = "Sponsor.findById", query = "SELECT e FROM Sponsor e WHERE e.id = :id")
})
public class Sponsor implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id; 
	
	private String name;
	
	private String telephone;
	
	private String address;
	
	private String email;
	
	private Sponsorship[] sponsoredGreys;
	
	public Sponsor() {
		super();
	}
	
	public Sponsor(String name){
		this();
	}
	
	public Long getId() {
		return this.id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Sponsorship[] getSponsoredGreys() {
		return sponsoredGreys;
	}

	public void setSponsoredGreys(Sponsorship[] sponsoredGreys) {
		this.sponsoredGreys = sponsoredGreys;
	}
	
	
}