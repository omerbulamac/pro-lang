find_divides()
{
	echo -n "pay: "; read num
	echo -n "payda: "; read den

	time="$(date +%s)"
	for (( x = 0; x < 1000; x++ ))
	do
		y=$(echo "scale=3; ($den * $x) / (($num * $x) - $den)" | bc)
		y=${y/\.*}

		if [ $y -gt 0 ]; then
			echo "$num/$den kesrinin bölenleri 1/$x ve 1/$y"
			break
		fi

	done
	time="$(($(date +%s)-time))"
	echo "$time saniye"
}

find_divides