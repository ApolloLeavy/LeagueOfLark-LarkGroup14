#!/+$level*50))
if [ $level -lt 5 ]
then
        if [ $experience -gt 99 ]
        then
                experience=$(($experience-100))
                level=$(($level+1))
		echo "You Leveled Up to Level $level"
		health=$(($health+8))
		ad=$(($ad+2))	
        fi
elif [ $level -lt 9 ]
then
        if [ $experience -gt 199 ]
        then
                experience=$(($experience-200))
                level=$(($level+1))
		echo "You Leveled Up to Level $level"
		health=$(($health+8))
                ad=$(($ad+2))
        fi
elif [ $level -lt 13 ]
then
        if [ $experience -gt 299 ]
        then
                experience=$(($experience-300))
                level=$(($level+1))
		echo "You Leveled Up to Level $level"
		health=$(($health+8))
                ad=$(($ad+2))
        fi
else
        echo "You are Max Level"
fi
