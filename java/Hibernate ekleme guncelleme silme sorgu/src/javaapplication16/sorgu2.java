/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication16;

import java.util.Iterator;
import java.util.List;
import org.hibernate.classic.Session;

/**
 *
 * @author cehars
 */
public class sorgu2 {
    
    
    public static void main(String[] args) {
       // TODO code application logic here
       Session sess = NewHibernateUtil.getSessionFactory().openSession();
       List list = sess.createSQLQuery("SELECT {p.*} FROM Rezervasyon p").addEntity("p", Rezervasyon.class).list();
       Iterator ite = list.iterator();
       while (ite.hasNext()) {
           Rezervasyon per = (Rezervasyon) ite.next();
           System.out.println(per.getIsim());
           System.out.println(per.getFiyat());
           System.out.println("**************");
       }
 
   }
    
}
