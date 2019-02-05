find ~/Desktop/tmp/ -name "*.txt" -size 0 -exec rm {} \;

for file in `ls *.txt`; 
	do
		if [ "${#file}" -lt 10 ];then
			mv $file short_$file
			echo moving $file to short_$file
		elif [ "${#file}" -gt 10 -a "${#file}" -le 20 ];then
			mv $file medium_$file
			echo moving $file to medium_$file
		else
			mv $file long_$file
			echo moving $file to long_$file
		fi
	done
