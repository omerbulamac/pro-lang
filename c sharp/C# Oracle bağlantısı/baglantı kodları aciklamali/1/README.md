#### C# Oracle Bağlantısı

ODAC kullanarak bağlantıyı gerçekleştireceğiz.

ODAC -> Oracle Data Access Component

ODAC, Oracle tarafından Microsoft Visual Studio için geliştirilmiş bir bir eklentidir.
Microsft .Net framework içinde Oracle Teknolojilerini kullanmaya yarayan ODAC, 
veritabanımıza direk olarak erişebilmemize imkan vererek bize hız kazandırmasının yanında, 
Visual Studio içerisine kendini de ekleyerek Oracle’ın yeteneklerini ve gücünü C# kullanıcılarının 
hizmetine sunuyor.

ODAC'ı Oracle'ın sitesinden indirip kuruyoruz.

Visual Studio'da bir form uygulaması oluşturalım. Sadece oracle ile bağlantı sağlayacağımız için 
bir buton işimizi görecektir.

Projemizi oluşturup Solution Explorer penceresinden References alanına sağa tıklıyoruz. 
"Add referance" diyerek Oracle.DataAccess'i ekliyoruz.

Projemize "Oracle.DataAccess.Client" ekliyoruz.

using Oracle.DataAccess.Client;

Butona tıkladığımızda bağlantı kurmasını isteyeceğiz.

conn.ConnectionString = "User ID=SYSTEM; Password=19; Data Source=PC";

veya

conn.ConnectionString = "User ID=cehars; Password=19; Data Source=PC";

İkisi de sorunsuz bağlanacaktır. 

Birisi sisteme girişte kullanıdğımız username(SYSTEM), diğeri veritabanı kullanıcı adımız(cehars).

İnternet üzerindeki örneklerde en çok karıştırılan nokta Data Source kısmına yazılacak parametrenin ne olduğu.

Genelde internet üzerinde ya sistem yada veritabanı username yada XE, ORCL gibi anahtar sözcükler kullanılmış.

Bağlantının başarılı olması için kullanılacak sözcükler bunlar değil. Doğru cevabı http://stackoverflow.com/ sitesinden buldum. 
Data Source kısmına yazılacak parametre bilgisayar ismi olacak. 

Bu ayarları kendi bilgisayarımıza göre özelleştirdikten sonra bağlantı için kodu çalıştırabiliriz.