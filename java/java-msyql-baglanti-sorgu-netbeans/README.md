netbeans->services->databases

buradan mysql'deki veritabanýmý ekledim. Ekledikten sonra oluþan linki kod'da veritabanýný baðlamak için kullandým.

link bu þekilde geliyor. jdbc:mysql://localhost:3306/otel?zeroDateTimeBehavior=convertToNull [root on Default schema]

ama kodda kullanýrken 

jdbc:mysql://localhost:3306/otel?zeroDateTimeBehavior=convertToNull

bu þekilde alýnýyor.

Tabi projeye mysql-connector-java-5.1.6.jar dosyasýný eklemezsek çalýþmaz.