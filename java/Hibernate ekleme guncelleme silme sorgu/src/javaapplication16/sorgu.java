/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication16;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author cehars
 */
public class sorgu {
    
    
     public static void main(String[] args) {
        
        
        
        //Session sess = HibernateSessionFactory.getSession();
        Session sess = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tr = sess.beginTransaction();
        
        Query query = sess.createQuery("from Rezervasyon");
        
        List result = query.list();
        Iterator it = result.iterator();
        
         while (it.hasNext()) {
            Rezervasyon emp = (Rezervasyon) it.next();
            System.out.print(emp.getIsim());
            System.out.print("   " + emp.getFiyat());
            System.out.println();
        }
         
        // Session sess = NewHibernateUtil.getSessionFactory().openSession();
        // Rezervasyon deneme = (Rezervasyon)sess.get(Rezervasyon.class, 1);
        // System.out.print(deneme.getIsim()+"\n");
   }
}
