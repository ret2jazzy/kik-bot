#!/bin/bash


while true; do
	f=`adb shell "su -c 'sqlite3 /data/data/pikek.night/databases/kikDatabase.db \"select * from messagesTable order by _id desc limit 1\"'"`
	if echo $f|grep -i "!help" |grep -e 'talk.kik.com'; then
	echo "!help"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i 'Hey'|grep -e 'talk.kik.com'; then
	echo "!hey"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!purge'|grep -e 'talk.kik.com'; then
	echo "Fuck off purgers"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!Games'|grep -e 'talk.kik.com'; then 
	echo "!games"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!Extras'|grep -e 'talk.kik.com'; then
	echo "!extras"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!unban'|grep -e 'talk.kik.com'; then
	echo "U cant Unban ur dad"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!addcom'|grep -e 'talk.kik.com'; then
	echo "No shit, U cant"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!delcom'|grep -e 'talk.kik.com'; then
	echo "No shit, U cant"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!credits'|grep -e 'talk.kik.com'; then
	echo "!credits"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i "!RPSstart" |grep -e 'talk.kik.com'; then
	echo "!RPSstart"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
		while true; do
		g=`adb shell "su -c 'sqlite3 /data/data/pikek.night/databases/kikDatabase.db \"select * from messagesTable order by _id desc limit 1\"'"`
		i=`echo $g| cut -d "|" -f 2| tr '[:upper:]' '[:lower:]'`
		k=`shuf -n 1 rps.txt`
			if [[ "$i" == *"$k"* ]] && echo $g|grep -e 'talk.kik.com';then
			echo "I also Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 168 1226
			adb shell input keyevent 66
			echo "!equal"|xclip -selection clipboard
			sleep 0.5s
			adb shell input tap 168 1226
			adb shell input keyevent 66
			adb shell input tap 55.9 103.9
			break
			elif [[ "$i" == *"rock"* ]] && [ "$k" == "paper" ] && echo $g|grep -e 'talk.kik.com';then
			y=`echo $g|cut -d "|" -f 3|sed 's/[_].*//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 168 1226
			adb shell input keyevent 66
			echo "$y Lost   -1"|xclip -selection clipboard
			sleep 0.5s
			adb shell input tap 168 1226
			adb shell input keyevent 66
			adb shell input tap 55.9 103.9
			if [ -f ScoresRps/$y ]; then
					q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
					r=`expr $q - 1`	
					echo "[$y: $r]">ScoresRps/$y
				else
			   		echo "[$y: -1]">ScoresRps/$y
				fi
			break
			elif [[ "$i" == *"rock"* ]] && [ "$k" == "scissor" ] && echo $g|grep -e 'talk.kik.com';then
			y=`echo $g|cut -d "|" -f 3|sed 's/[_].*//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 168 1226
			adb shell input keyevent 66
			echo "$y Won    +1"|xclip -selection clipboard
			sleep 0.5s
			adb shell input tap 168 1226
			adb shell input keyevent 66
			adb shell input tap 55.9 103.9
			if [ -f ScoresRps/$y ]; then
					q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
					r=`expr $q + 1`	
					echo "[$y: $r]">ScoresRps/$y
				else
			   		echo "[$y: 1]">ScoresRps/$y
				fi
			break
			elif [[ "$i" == *"paper"* ]] && [ "$k" == "scissor" ] && echo $g|grep -e 'talk.kik.com';then
			y=`echo $g|cut -d "|" -f 3|sed 's/[_].*//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 168 1226
			adb shell input keyevent 66
			echo "$y Lost    -1"|xclip -selection clipboard
			sleep 0.5s
			adb shell input tap 168 1226
			adb shell input keyevent 66
			adb shell input tap 55.9 103.9
			if [ -f ScoresRps/$y ]; then
					q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
					r=`expr $q - 1`	
					echo "[$y: $r]">ScoresRps/$y
				else
			   		echo "[$y: -1]">ScoresRps/$y
				fi
			break
			elif [[ "$i" == *"paper"* ]] && [ "$k" == "rock" ] && echo $g|grep -e 'talk.kik.com';then
			y=`echo $g|cut -d "|" -f 3|sed 's/[_].*//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 168 1226
			adb shell input keyevent 66
			echo "$y Won    +1"|xclip -selection clipboard
			sleep 0.5s
			adb shell input tap 168 1226
			adb shell input keyevent 66
			adb shell input tap 55.9 103.9
			if [ -f ScoresRps/$y ]; then
					q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
					r=`expr $q + 1`	
					echo "[$y: $r]">ScoresRps/$y
				else
			   		echo "[$y: 1]">ScoresRps/$y
				fi
			break
			elif [[ "$i" == *"scissor"* ]] && [ "$k" == "rock" ] && echo $g|grep -e 'talk.kik.com';then
			y=`echo $g|cut -d "|" -f 3|sed 's/[_].*//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 168 1226
			adb shell input keyevent 66
			echo "$y Lost    -1"|xclip -selection clipboard
			sleep 0.5s
			adb shell input tap 168 1226
			adb shell input keyevent 66
			adb shell input tap 55.9 103.9
			if [ -f ScoresRps/$y ]; then
					q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
					r=`expr $q - 1`	
					echo "[$y: $r]">ScoresRps/$y
				else
			   		echo "[$y: -1]">ScoresRps/$y
				fi
			break
			elif [[ "$i" == *"scissor"* ]] && [ "$k" == "paper" ] && echo $g|grep -e 'talk.kik.com';then
			y=`echo $g|cut -d "|" -f 3|sed 's/[_].*//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 168 1226
			adb shell input keyevent 66
			echo "$y Won    +1"|xclip -selection clipboard
			sleep 0.5s
			adb shell input tap 168 1226
			adb shell input keyevent 66
			adb shell input tap 55.9 103.9
			if [ -f ScoresRps/$y ]; then
					q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
					r=`expr $q + 1`	
					echo "[$y: $r]">ScoresRps/$y
				else
			   		echo "[$y: 1]">ScoresRps/$y
				fi
			break
			else
				if echo $g|grep -e 'talk.kik.com'; then
				echo "!answerrps"|xclip -selection clipboard
				adb shell input tap 223 223
				adb shell input tap 168 1226
				adb shell input tap 168 1226
				adb shell input keyevent 66
				adb shell input tap 55.9 103.9
				fi
			fi
		done
	elif echo $f|grep -i "!AllScores" |grep -e 'talk.kik.com'; then
	s=`cat ScoresRps/*`
	echo "$s"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f| cut -d "|" -f 2|grep -P -i '^!revsay' && echo $f|grep -e 'talk.kik.com'; then
	echo $f|sed '1s/\!revsay\>//g'|rev|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f| cut -d "|" -f 2|grep -P -i '^!revword' && echo $f|grep -e 'talk.kik.com'; then
	echo $f|sed '1s/\!revword\>//g'|awk '{ for (i=NF; i>1; i--) printf("%s ",$i); print $1; }'|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f| cut -d "|" -f 2|grep -P -i '^!coolsay' && echo $f|grep -e 'talk.kik.com'; then
	echo $f|sed '1s/\!coolsay\>//g'|sed '1s/^/!c /'|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f| cut -d "|" -f 2|grep -P -i '^!cowsay' && echo $f|grep -e 'talk.kik.com'; then
	echo $f|sed '1s/\!cowsay\>//g'|cowsay|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f| cut -d "|" -f 2|grep -P -i '^!say' && echo $f|grep -e 'talk.kik.com'; then
	echo $f|sed '1s/\!say\>//g'|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i "!RPS" |grep -e 'talk.kik.com'; then
	echo "!RPS"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|cut -d "|" -f 11|grep -e "has joined the chat"; then
	echo "!join"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|cut -d "|" -f 11|grep -e "has left the chat"; then
	echo "!left"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 168 1226
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	fi
done

  
