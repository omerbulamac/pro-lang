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
public class guncelle {
    
    
     public static void main(String[] args) {
        
        
        Session sess = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tr = sess.beginTransaction();
        
        Rezervasyon st = (Rezervasyon) sess.load(Rezervasyon.class, 11);
        st.setIsim("cehars");
        tr.commit();
        System.out.println("Başarıyla güncellendi");
        sess.close();
        
        // Session sess = NewHibernateUtil.getSessionFactory().openSession();
        // Rezervasyon deneme = (Rezervasyon)sess.get(Rezervasyon.class, 1);
        // System.out.print(deneme.getIsim()+"\n");
   }
}
