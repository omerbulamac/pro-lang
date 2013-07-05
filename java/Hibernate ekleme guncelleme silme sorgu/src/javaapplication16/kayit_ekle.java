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
public class kayit_ekle {
    public static void main(String[] args) {
        
        
        
        //Session sess = HibernateSessionFactory.getSession();
        Session sess = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tr = sess.beginTransaction();
        Rezervasyon emp = new Rezervasyon();
        emp.setIsim("deneme_otel");
        emp.setFiyat(550);
        sess.save(emp);
        tr.commit();
        System.out.println("Başarıyla eklendi"); 
        
        // Session sess = NewHibernateUtil.getSessionFactory().openSession();
        // Rezervasyon deneme = (Rezervasyon)sess.get(Rezervasyon.class, 1);
        // System.out.print(deneme.getIsim()+"\n");
   }
}
