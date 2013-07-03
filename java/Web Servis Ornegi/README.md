Þimdilik buraya uzunca bir açýklama yazýyorum. Boþ zamanda bu yazý düzenlenip blog haline çevirilecek.

Eclipste Web servis oluþturma sýrasýnda oluþan ve çözümününü bulamadýðým hatalar yüzünden Web servisini netbeansta web istemcisinide eclipste hazýrladým.

Tabi bu kararý verirken þöyle bir sorun oldu. Eclipse öntanýmlý olarak tomcat sunucusunu neetbeans ise glassfish sunucusunu kullanýyordu.

Ayný anda ikisini çalýþtýrmak port çakýþmasýna sebeb veriyor ve bu iki sunucudan birisini kaldýrmamýz gerekiyordu.

Netbeansta tomcat kullanmaya karar verdim. Netbeans kurulumu sýrasýnda glassfish deðilde tomcati seçtim ve netbeansi tomcat ile kullanmaya baþladým.

Netbeansta küçük bir web servis hazýrladým deploy edip test ettikten sonra 

http://localhost:8084/Web_Servisi1/Yeni_Web_Servis_Adi?wsdl

bu linki ettim. Xml dilinden oluþan bir sayfa. Bu linki eclipse farklý platformlarda haberleþmek için kullanacaðýz.

Eclipste hazýrladýðým web_servis istemcisinde ise bu linki kullandým. 

Tabi o linki kullanarak web servis linki oluþturduktan sonra gelen projede test için test.java dosyasýný yazmadan önce küçük bir eksiðimiz kalýyor. 

O da netbeanstan projenin java dosyasýný eclipse eklemek. Web servis istemci projesini oluþtururken bunu eklemiyor

Yeni_Web_Servis_Adi.java dosyasýnýda ekledikten sonra test.java dosyasýnýn içeriðini hazýrlayýp servisi test etmek kalýyor. 

Web servisi çalýþtýrýrken netbeans açýk olmalý yoksa web servis kapalý olacaðý için eclips üzerinde çalýþan istemci web servisimize ulaþamaz.


![](http://j1307.hizliresim.com/1c/3/pv5ss.png)
