package gpago.model.test;

import gpago.model.entity.Greyhound;

import java.util.List;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ModelTest {
	private static final Logger logger = Logger.getLogger(ModelTest.class.getName());
	private static final String PERSISTENCE_UNIT_NAME = "GPAGO";
	private EntityManagerFactory emf;
	private EntityManager em;
	
	public ModelTest() {
		emf = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
		em = emf.createEntityManager();
	}

	public static void main(String[] args) {
		ModelTest main = new ModelTest();
		main.createAndRead();
		//main.createAndRollback();
	}

	private void createAndRead() {
		em.getTransaction().begin();
		newGreyhound("Fred");
		newGreyhound("Sue");
		newGreyhound("Joe");
		em.getTransaction().commit();
		
		List<Greyhound> greyhounds = em.createNamedQuery("Greyhound.findAll").getResultList();
		
		for (Greyhound greyhound: greyhounds) {
			System.out.println("Greyhound: " + greyhound.getName());
		}
		
		

		// g should be written to database now.
		// Read it from db (no transaction context needed for em.find method)
		//Greyhound g2 = em.find(Greyhound.class, g.getId());
		//logger.info("Greeting " + g.getId() + " from db: " + g2);
	}
	
	private void newGreyhound(String name) {
		Greyhound g = new Greyhound();
		g.setName(name);
		em.persist(g);
	}

	private void createAndRollback() {
		Greyhound g = new Greyhound();
		g.setId(2L);
		g.setName("Frankie");
		em.getTransaction().begin();
		em.persist(g);
		em.getTransaction().rollback();

		logger.info("Persisted " + g + ", but the transaction was rolled back.");
		Greyhound g2 = em.find(Greyhound.class, g.getId());
		logger.info("Greeting " + g.getId() + " from db: " + g2); // should be
																	// null
	}
}