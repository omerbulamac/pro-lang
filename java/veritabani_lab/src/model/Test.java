package model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("deneme3");
		
		EntityManager em = entityManagerFactory.createEntityManager();
		
		EntityTransaction userTransaction = em.getTransaction();
		
		userTransaction.begin();
		
		Cehars customer = new Cehars();
		
		customer.setAd("hasan");
		
		customer.setNumara(542);
		
		em.persist(customer);
		userTransaction.commit();
		em.close();
		entityManagerFactory.close();

	}

}



