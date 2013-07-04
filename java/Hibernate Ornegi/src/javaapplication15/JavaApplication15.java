/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication15;

import org.hibernate.Session;


/**
 *
 * @author cehars
 */
public class JavaApplication15 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Session sess = NewHibernateUtil.getSessionFactory().openSession();
        Rezervasyon deneme = (Rezervasyon)sess.get(Rezervasyon.class, 1);
        System.out.print(deneme.getIsim());
        
    }
}
