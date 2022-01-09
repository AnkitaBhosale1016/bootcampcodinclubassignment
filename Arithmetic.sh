
 Dictionary()
      {
        output1=$(($a+$b*$c))
        echo "Result of a+b*c = : $output1"
        output2=$(($a*$b+$c))
        echo "Result of a*b+c = : $output2"
        output3=$(($c+$a/$b))
        echo "Result of c+a/b = : $output3"
        output4=$(($a%$b+$c))
        echo "Result of a%b+c = : $output4"

        DItem=($output1 $output2 $output3 $output4 )
        echo ${DItem[@]}
       for ((i = 0; i<5; i++))
	do
    
    		for((j = 0; j<5-i-1; j++))
    		do
    
        		if [[ ${DItem[j]} -lt ${DItem[$((j+1))]} ]]
        		then
            
            			temp=${DItem[j]}
            			DItem[$j]=${DItem[$((j+1))]}  
            			DItem[$((j+1))]=$temp
        		fi
    		done
	done

	echo "Array in Descending order :"
	echo ${DItem[*]}
 
       for ((i = 0; i<5; i++))
	do
		for((j = 0; j<5-i-1; j++))
    		do
    
        		if [[ ${DItem[j]} -gt ${DItem[$((j+1))]} ]]
        		then
            
            			temp=${DItem[j]}
            			DItem[$j]=${DItem[$((j+1))]}  
            			DItem[$((j+1))]=$temp
        		fi
    		done
	done

	echo "Array in Ascending order :"
	echo ${DItem[*]}

	
        
      }

read -p "Enter Value of a : " a
read -p "Enter Value of b :" b
read -p "Enter Value of c :"  c
Dictionary $a $b $c
 

  