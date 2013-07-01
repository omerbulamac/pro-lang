import java.sql.*;

public class kayit_ekle {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try
        {
          String myDriver = "com.mysql.jdbc.Driver";
          String db = "jdbc:mysql://localhost/cehars";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(db, "root", "");
          
          Statement baglan = conn.createStatement();
          baglan.executeUpdate("insert into togrenci(ogrenciID,ad,soyad,bolumID)" + " values(110,'deneme','deneme2','3')");
          
          // String sorgu = "SELECT ad, soyad FROM togrenci where bolumID < 2";

       // Statement st = conn.createStatement();
          
       // ResultSet rs = st.executeQuery(sorgu);
          
       // while (rs.next())
       // {
       //   String s_ad = rs.getString("ad");
       //   String s_soyad = rs.getString("soyad");
       //   
       //   System.out.print(s_ad + " " + s_soyad + "\n");
       //   
       // }
       // st.close();
       
        
        
        }
        
        catch (Exception a)
        {
          System.err.println("Hata ! ");
          System.err.println(a.getMessage());
        }

		
		

	}

}
