
package cehars;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
 
@ManagedBean (name="toplam")
@RequestScoped
/**
 *
 * @author tugdev
 */
public class toplam {
    private String sayi1;
    private int sayi2;
    private int sonuc;
    
    
public String getSayi1() {
return sayi1;
}
 
public void setSayi1(String sayi1) {
this.sayi1 = sayi1;
}
 

  public int getSayi2() {
return sayi2;
}
 
public void setSayi2(int sayi2) {
this.sayi2 = sayi2;
}
  public int getSonuc() {
return sonuc;
}
 
public void setSonuc(int sonuc) {
this.sonuc = sonuc;
}
    
 public void Hesapla(){
Session sess = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tr = sess.beginTransaction();
        Rezervasyon emp = new Rezervasyon();
        
                
        emp.setIsim(sayi1);
        
        sess.save(emp);
        tr.commit();
        System.out.println("Başarıyla eklendi"); 
}   
    
    
    
    
    
}