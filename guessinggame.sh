let value=$(echo | ls -l | wc -l)-1
echo "Guess :" && read n

function check # a function
{ 
	# If statements
	if [[ n*2 -le value ]]
	then
		echo "Too Low"
	elif [[ n -ge value*2 ]]
	then
		echo "Too high"
	fi
}

while [[ n -ne value ]]
do
	check && echo "Try Again :" && read n
done
echo "Congratulation !! You have Guessed Correctly : $n"
