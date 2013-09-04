##### ogrenci_tablosu
- ogrenci_id
- ogrenci_ad
- ogrenci_bolum

##### bolum_tablosu
- bolum_id
- bolum_ad
- bolum_fakulte

##### fakulte_tablosu
- fakulte_id
- fakulte_ad

ogrenci_tablosu'nun ogrenci_bolum alanı bolum_tablosu'nun bolum_id alanına baglı.(ogrenci_bolum foregin key)

bolum_tablosu'nun bolum_fakulte alanı fakulte_tablosu'nun fakulte_id alanına baglı.(bolum_fakulte foregin key)


Veritabanında kayıtlı her ogrencinin hangi fakultede oldugunu ogrenmek için C# içinde kullandığımız SQL sorgusu:

	SELECT ogrenci_tablosu.ogrenci_ad, fakulte_tablosu.fakulte_ad 
	FROM ogrenci_tablosu, bolum_tablosu, fakulte_tablosu 
	WHERE ogrenci_tablosu.ogrenci_bolum = bolum_tablosu.bolum_id 
	AND bolum_tablosu.bolum_fakulte = fakulte_tablosu.fakulte_id