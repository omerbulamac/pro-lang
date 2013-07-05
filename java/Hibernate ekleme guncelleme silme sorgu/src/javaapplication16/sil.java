/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication16;

import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author cehars
 */
public class sil {
    
    public static void main(String[] args) {
        
        
        Session sess = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tr = sess.beginTransaction();
        
      
        Rezervasyon emp = (Rezervasyon) sess.load(Rezervasyon.class, 11);
        sess.delete(emp);
        System.out.println("Başarıyla silindi");
        tr.commit();
        sess.close();
   }
}
