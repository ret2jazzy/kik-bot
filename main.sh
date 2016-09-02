#!/bin/bash


while true; do
	f=`adb shell "su -c 'sqlite3 /data/data/pikek.night/databases/kikDatabase.db \"select * from messagesTable order by _id desc limit 1\"'"`
	m=`echo $f|sed 's/...............$//'|sed 's/.*\(..............................\)/\1/'`
	if echo $f|grep -i "!help" |grep -e 'talk.kik.com'; then
	echo "!help"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i 'Hey'|grep -e 'talk.kik.com'; then
	echo "!hey"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!purge'|grep -e 'talk.kik.com'; then
	echo "Fuck off purgers"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!Games'|grep -e 'talk.kik.com'; then
	echo "!games"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!Extras'|grep -e 'talk.kik.com'; then
	echo "!extras"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!sayhelp'|grep -e 'talk.kik.com'; then
	echo "!sayhelp"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!unban'|grep -e 'talk.kik.com'; then
	echo "U cant Unban ur dad"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!addcom'|grep -e 'talk.kik.com'; then
	echo "No shit, U cant"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!delcom'|grep -e 'talk.kik.com'; then
	echo "No shit, U cant"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!credits'|grep -e 'talk.kik.com'; then
	echo "!credits"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!source'|grep -e 'talk.kik.com'; then
	echo "!source"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i '!scores'|grep -e 'talk.kik.com'; then
	echo "!scores"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i "!RPSstart" |grep -e 'talk.kik.com'; then
	echo "!RPSstart"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
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
			adb shell input tap 434 794
			adb shell input tap 111 1184
			adb shell input keyevent 66
			echo "!equal"|xclip -selection clipboard
			adb shell input tap 434 794
			adb shell input tap 111 1184
			adb shell input keyevent 66
			adb shell input tap 55.9 103.9
			break
			elif [[ "$i" == *"rock"* ]] && [ "$k" == "paper" ] && echo $g|grep -e 'talk.kik.com';then
			y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 434 794
			adb shell input tap 111 1184
			adb shell input keyevent 66
			echo "$y Lost   -1"|xclip -selection clipboard
			adb shell input tap 434 794
			adb shell input tap 111 1184
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
			y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 434 794
			adb shell input tap 111 1184
			adb shell input keyevent 66
			echo "$y Won    +1"|xclip -selection clipboard
			adb shell input tap 434 794
			adb shell input tap 111 1184
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
			y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 434 794
			adb shell input tap 111 1184
			adb shell input keyevent 66
			echo "$y Lost    -1"|xclip -selection clipboard
			adb shell input tap 434 794
			adb shell input tap 111 1184
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
			y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 434 794
			adb shell input tap 111 1184
			adb shell input keyevent 66
			echo "$y Won    +1"|xclip -selection clipboard
			adb shell input tap 434 794
			adb shell input tap 111 1184
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
			y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 434 794
			adb shell input tap 111 1184
			adb shell input keyevent 66
			echo "$y Lost    -1"|xclip -selection clipboard
			adb shell input tap 434 794
			adb shell input tap 111 1184
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
			y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
			echo "I Choose $k"|xclip -selection clipboard
			adb shell input tap 223 223
			adb shell input tap 168 1226
			adb shell input tap 434 794
			adb shell input tap 111 1184
			adb shell input keyevent 66
			echo "$y Won    +1"|xclip -selection clipboard
			adb shell input tap 434 794
			adb shell input tap 111 1184
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
			fi
		done

				
	elif echo $f|grep -i "!RPSScores" |grep -e 'talk.kik.com'; then
	s=`cat ScoresRps/*`
	echo "$s"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i "!typeScores" |grep -e 'talk.kik.com'; then
	s=`cat Scores/*`
	echo "$s"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i "!Type" |grep -e 'talk.kik.com'; then
	w=`shuf -n 1 rockyou.txt`
	echo "Type : $w"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
		while true; do
			m=`adb shell "su -c 'sqlite3 /data/data/pikek.night/databases/kikDatabase.db \"select * from messagesTable order by _id desc limit 1\"'"`
			if echo $m|grep -i "$w"|grep -e 'talk.kik.com'; then
				j=`echo $m|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
				echo "$j Wins   +1"|xclip -selection clipboard
				adb shell input tap 223 223
				adb shell input tap 168 1226
				adb shell input tap 434 794
				adb shell input tap 111 1184
				adb shell input keyevent 66
				adb shell input tap 55.9 103.9
				if [ -f Scores/$j ]; then
					q=`cat Scores/$j|sed 's/.*://'|tr -d "[]"`
					r=`expr $q + 1`	
					echo "[$j: $r]">Scores/$j
				else
			   		echo "[$j: 1]">Scores/$j
				fi
			break
			elif echo $m|grep -i "!reset"|grep -e 'talk.kik.com'; then
			break
			fi	
		done
	elif echo $f| cut -d "|" -f 2|grep -P -i '!revsay' && echo $f|grep -e 'talk.kik.com'; then
		elif echo $f||awk '{gsub("!revsay", "");print}'|rev|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f| cut -d "|" -f 2|grep -P -i '!revword' && echo $f|grep -e 'talk.kik.com'; then
	elif echo $f||awk '{gsub("!revword", "");print}'|awk '{ for (i=NF; i>1; i--) printf("%s ",$i); print $1; }'|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f| cut -d "|" -f 2|grep -P -i '!coolsay' && echo $f|grep -e 'talk.kik.com'; then
	elif echo $f||awk '{gsub("!coolsay", "!c");print}'|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f| cut -d "|" -f 2|grep -P -i '!cowsay' && echo $f|grep -e 'talk.kik.com'; then
	elif echo $f||awk '{gsub("!cowsay", "");print}'|cowsay|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f| cut -d "|" -f 2|grep -P -i '!say' && echo $f|grep -e 'talk.kik.com'; then
	elif echo $f||awk '{gsub("!say", "");print}'|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i "!RPS" |grep -e 'talk.kik.com'; then
	echo "!RPS"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|grep -i "!who" |grep -e 'talk.kik.com'; then
	n=`adb shell "su -c 'sqlite3 /data/data/pikek.night/databases/kikDatabase.db \"select * from memberTable order by _id desc\"'"|grep "$m"|cut -d"|" -f 3|sed 's/[@].*//'|sed 's/....$//'|shuf -n 1`
	echo $f|cut -d "|" -f 2 | tr -d "!"|sed -e "s/$/\n\n$n/"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|cut -d "|" -f 11|grep -e "has joined the chat"; then
	echo "!join"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	elif echo $f|cut -d "|" -f 11|grep -e "has left the chat"; then
	echo "!left"|xclip -selection clipboard
	adb shell input tap 223 223
	adb shell input tap 168 1226
	adb shell input tap 434 794
	adb shell input tap 111 1184
	adb shell input keyevent 66
	adb shell input tap 55.9 103.9
	fi
done

  
