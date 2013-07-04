/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author cehars
 */
public class JavaApplication5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        // TODO code application logic here
        
        
         Class.forName("com.mysql.jdbc.Connection");  
    Connection con =(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/otel?zeroDateTimeBehavior=convertToNull","root","");  
        
    String query; 
        query = "insert into rezervasyon(id, isim, fiyat) values('5','deneme', '120');";
    
    Statement stm = (Statement) con.createStatement();  
    int executeUpdate = stm.executeUpdate(query);  
  
System.out.println("Ekleme islemi basarıyla tamamlandı"); 
    
    }
}
