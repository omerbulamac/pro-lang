# -*- coding: cp1254 -*-
import random

konu = input("Production l için:             1\n\
Production 2 için:             2\n\
Research &Development l için:  3\n\
Research &Development 2 için:  4\n\
Information technology 1 için: 5\n\n\
seçim: ")
if konu == 1:
        ingilizce = open("ingilizce1.txt")
        turkce =open("turkce1.txt")  

if konu == 2:
        ingilizce = open("ingilizce2.txt")
        turkce =open("turkce2.txt")
if konu == 3:
        ingilizce = open("ingilizce3.txt")
        turkce =open("turkce3.txt")  
if konu == 4:
        ingilizce = open("ingilizce4.txt")
        turkce =open("turkce4.txt")          
if konu == 5:
        ingilizce = open("ingilizce5.txt")
        turkce =open("turkce5.txt")  

        
liste_ingilizce = []
liste_turkce = []

for i in ingilizce:
        i = list(i)
        i.pop()
        i = "".join(i)
        liste_ingilizce.append(i)
for j in turkce:
        j = list(j)
        j.pop()
        j = "".join(j)
        liste_turkce.append(j)

secim = input("kelime sorgulamak için 1 \nalıştırma için 2\n\nsecim: ")
if secim == 2:

    toplam = 0
    dogru = 0
    s = input("ingilizce-turkce için 1\nturkce-ingilizce için 2\n\nseçim: ")
    if s == 1:
            while True:
                toplam += 1
                rastgele = random.randrange(len(liste_turkce))
                print liste_ingilizce[rastgele]
                kacinci = liste_ingilizce.index(liste_ingilizce[rastgele])
                tahmin = raw_input("tahmin et: ")
                if tahmin != liste_turkce[kacinci]:
                    print liste_turkce[kacinci]
                else:
                    dogru += 1
                print toplam,"de",dogru,"\n\n\n"

    if s == 2:
            while True:
                toplam += 1
                rastgele = random.randrange(len(liste_turkce))
                print liste_turkce[rastgele]
                kacinci = liste_turkce.index(liste_turkce[rastgele])
                tahmin = raw_input("tahmin et: ")
                if tahmin != liste_ingilizce[kacinci]:
                    print liste_ingilizce[kacinci]
                else:
                    dogru += 1
                print toplam,"de",dogru,"\n\n\n"


if secim == 1:
    sec2 = raw_input("turkce mi / ingilizce mi ?: ")
    if sec2 == "ingilizce":
        
        while True:
            ing_kelime = raw_input("kelime: ")
            bul = 0
            if ing_kelime in liste_ingilizce:
                    kacinci = liste_ingilizce.index(ing_kelime)
                    print liste_turkce[kacinci],"\n\n"
                    bul = 1
            if bul == 0:
                    print "sözlükte böyle bir kelime yok\n\n"
            
            
    
    if sec2 == "turkce":    
        while True:
             
            turkce_kelime = raw_input("kelime: ")
            bul = 0

            if turkce_kelime in liste_turkce:
                    kacinci = liste_turkce.index(turkce_kelime)
                    print liste_ingilizce[kacinci],"\n\n"
                    bul = 1
            if bul == 0:
                    print "sözlükte böyle bir kelime yok\n\n"
