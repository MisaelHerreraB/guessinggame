function total {
echo "How many files are in the directory?"
local num=$( ls | wc -l )
local var=-1
while [[ $var -ne $num ]]
do
     echo -n "Your response: "
     read var
     if [[ $var -gt $num ]]
	then 
		echo "- very high number. Try again now!"
	fi
     if [[ $var -lt $num ]]
	then 
		echo "- very low number. Try again now!"
	fi
     if [[ $var -eq $num ]]
	then
		echo "Congratulation!!!"
		echo "YOU WIN - The response is $num "
	fi
done
}
total
