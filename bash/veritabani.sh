# tablo oluşturma #
#-----------------#

create_table () 
{
	echo -n "tablo adı:"
	read table_name

	mkdir "$table_name"
	echo "$table_name tablosu oluşturuldu"

	cd $table_name

	echo -n "sutun sayısı: "
	read say

	for (( x = 0; x < say; x++ ))
	do
	
		echo -n "sutun adi: "
		read sutun_adi

		touch $sutun_adi

	done
}


# tablo silme #
#-------------#

delete_table()
{
	echo -n "silinecek tablo ismi: "
	read sil

	find $sil 2> /dev/null 1> /dev/null
	a=$?

	if [ $a -eq 0 ]
	then

		echo -n "$sil tablosunu silmek istediğinize eminmisiniz: "
		read sor


		if [ $sor = "yes" ]
		then
	
			rm -rf $sil
			a=$?
			echo "$sil tablosu başarıyla silindi"

			else
			echo "silmekten vazgeçildi"

		fi
		
		else
		
		echo "--- dosya bulunamadı ---"

	fi

}



# kayit ekleme #
#--------------#

insert_record()
{
	echo -n "Tablo ismi gir: "
	read dizin

	for file in $(ls ~/Masaüstü/$dizin)
	do
	
		echo -n "$file: "
		read deger

		echo $deger >> ~/Masaüstü/$dizin/$file 

	done
}

# kayit silme #
#-------------#

delete_record()
{
	echo -n "tablo ismi: "
	read table_name
	sira=0
	echo -n "silinecek: "
	read silinecek

	for file in $(ls ~/Masaüstü/$table_name)
	do
		cd $table_name

		grep $silinecek $file 2> /dev/null 1>/dev/null
		a=$?

		cd ..

		if [ $a -eq 0 ]
		then
		
			break
			break

		fi
	
	done
	

	cd $table_name

	for file2 in $(
	while read line
	do
	echo "$line"
	done < $file
	)

	do

		if [ $file2 = $silinecek ]
		then

			sira1=$sira

		else

			sira=$(( $sira+1 ))

		fi
		
		echo $sira1

	done 
	
	say=0

	sira1=$(( $sira1 + 1 ))

	for file2 in $(ls ~/Masaüstü/$table_name)
	do

		for file in $(
		while read line
		do
		echo "$line"
		done < $file2
		)

		do
			say=$(( $say + 1 ))
			if [ $sira1 -eq $say ]
			then
			
				say=$(( $say + 1 ))

			else
			
				echo $file >> yeni

			fi
		done

		rm -rf $file2
		mv yeni $file2
		say=0

	done

}

#~ ----------------------------------------------------------------------------------------

echo " SECENEKLER"
echo " ----------"
echo "  - tablo_olustur(olus)"
echo "  - tablo_sil(tsil)"
echo "  - kayit_ekle(ekle)"
echo "  - kayit_sil(ksil)"
echo -n ": "
read sec

if [ $sec = "olus" ]
then
	create_table

elif [ $sec = "tsil" ]
then
	delete_table

elif [ $sec = "ekle" ]
then
	insert_record

elif [ $sec = "ksil" ]
then
	delete_record

fi