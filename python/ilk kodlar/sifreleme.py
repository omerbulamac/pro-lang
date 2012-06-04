#!/usr/bin/python
# -*- coding: utf-8 -*-
f=0
while f==0:
	a=raw_input("Kullanici adinizi giriniz:")
	cehars=0
	while cehars==0:
		x=raw_input("Sifre al:")
		y=raw_input("Yeni sifreyi onayla:")
		if x==y:
			print "Sifreniz dogrulandi artik yeni sifreniz:",x,"\n"
			cehars=1
		else :
			print "sifreler aynı degil tekrar deneyiniz\n"
			cehars=0
		
		while cehars==1:
			print "1-Sifre islemleri\n2-Siteme giris"
			t=raw_input("Girmek istediginiz katagorinin basindaki sayiyi giriniz:")

				

			if t=="1":
				print "\n1-sifre değistirme\n2-şifremi unuttum"
				k=raw_input("Girmek istediginiz katagorinin basındaki sayiyi giriniz:")
				v=4
				while 0<v:
					if k=="1":
						w=raw_input("eski sifreyi giriniz:")
						if x==w:
							cehars=0
							v=-1
						else:
							v=v-1
							if v!=0:
								print "sifreyi yanlis girdiniz",v,"deneme hakkiniz kaldi"
							else:
								break
				if v==0:
						s=0
						if v==0:
							print "\n---hesabiniz bloke olmustur---"
							while s==0:
								
								print "\n1-yeni hesap alma"
								print "2-cikis"
								q=raw_input("Girmek istediginiz katagorinin basindaki sayiyi giriniz:")
								if q=="1":
									f=0
									cehars=7
									s=1
								elif q=="2":
									print "------------------------------------------------------------"
									cehars=7
									f=7
									s=1
								else:
									print "hatali giris yaptiniz"
									s=0
						
						
					
					
					
					
					
							
							
				if k=="2":
					
					s=4
					while 0<s:
						b=raw_input("\nkullanici adinizi dogrulayiniz:")
						if a==b:
							s=-1
							cehars=0
							
						else:
							print "!!!kullanici adini hatali girdiniz!!!"
							s=s-1
							if s!=0:   #bu if i o hakkınız kaldı demesin diye koyduk
								print s,"hakkiniz kaldi"
							else:
								break	
						
					if s==0:
						print "\n---hesabiniz bloke olmustur---"
						while s==0:
							
							print "\n1-yeni hesap alma"
							print "2-cikis"
							q=raw_input("Girmek istediginiz katagorinin basindaki sayiyi giriniz:")
							if q=="1":
								f=0
								cehars=7
								s=1
							elif q=="2":
								print "------------------------------------------------------------"
								cehars=7
								f=7
								s=1
							else:
								print "hatali giris yaptiniz"
								s=0
								
					
			elif t=="2":
					hasan=3
					t=raw_input("\nSisteme giris yapmak icin sifrenizi giriniz:")
					while 0<hasan:
							
						
						if x==t:
							print "**"+a+"** hosgeldiniz..."
							hasan=-1
							compeng=7
							cehars=7       #döngülerden çıkmak için
							f=7 
						
						elif x!=t:
							print "Sifrenizi yanlis girdiniz",hasan,"hakkiniz kaldi"
							hasan-=1
							t=raw_input("\nSifrenizi tekrar giriniz:")
							
					s=0
					if hasan==0:
						print "\n---hesabiniz bloke olmustur---"
						while s==0:
							
							print "\n1-yeni hesap alma"
							print "2-cikis"
							q=raw_input("Girmek istediginiz katagorinin basindaki sayiyi giriniz:")
							if q=="1":
								f=0
								cehars=7
								s=1
							elif q=="2":
								print "------------------------------------------------------------"
								cehars=7
								f=7
								s=1
							else:
								print "hatali giris yaptiniz"
								s=0
		  			
			else:
				print "yanlis giris yaptiniz\n"
				compeng="0"
						
						
						
								
								
								
									
				
				
				
