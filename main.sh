#!/bin/bash

typeallowed=1
rpsallowed=1
while true; do
	f=`adb shell "su -c 'sqlite3 /data/data/pikek.night/databases/kikDatabase.db \"select * from messagesTable order by _id desc limit 1\"'"`
	m=`echo $f|sed 's/...............$//'|sed 's/.*\(..............................\)/\1/'`
	if echo $f|grep -i "!coms" |grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo "!help"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i 'Hey'|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo "!hey"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i '!purge'|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'|| echo $f| rev |grep -i '!purge'|grep -e 'moc.kik.klat' | grep -e 'moc.kik.spuorg@'; then
	echo "Fuck off purgers"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66

	elif echo $f|grep -i '!delall'|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'|| echo $f| rev |grep -i 'delall'|grep -e 'moc.kik.klat' | grep -e 'moc.kik.spuorg@'; then
	echo "No shit, U cant"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i '!Games'|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo "!games"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i '!Extras'|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo "!extras"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i '!sayhelp'|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo "!sayhelp"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i '!Maker'|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo "!maker"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i '!source'|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo "!source"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66

	elif echo $f|grep -i '!myscores'|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	y=`echo $f|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
	m=`cat Scores/$y`
	n=`cat ScoresRps/$y`
	echo -e "Score in Type:\n$m\n\nScore in RPS\n$n"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i '!scores'|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo "!scores"|xclip -selection clipboard
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66

	elif echo $f|grep -i '!control'|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	t=`adb shell "su -c 'sqlite3 /data/data/pikek.night/databases/kikDatabase.db \"select partner_jid from messagesTable order by _id desc limit 1\"'"`
	if [[ "$t" == *"snipersnague_rub@talk.kik.com"* ]]; then	
		
		if echo $f| grep -i "Type"|grep -i "stop"|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
		typeallowed=0
		echo "Type game is stopped"|xclip -selection clipboard
		adb shell input tap 434 794
		adb shell input tap 111 1184|adb shell input keyevent 66
		
		elif echo $f| grep -i "Type"|grep -i "Start"|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
		typeallowed=1
		echo "Type game is Started"|xclip -selection clipboard
		adb shell input tap 434 794
		adb shell input tap 111 1184|adb shell input keyevent 66
		
		elif echo $f| grep -i "RPS"|grep -i "Stop"|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
		rpsallowed=0
		echo "RPS game is Stopped"|xclip -selection clipboard
		adb shell input tap 434 794
		adb shell input tap 111 1184|adb shell input keyevent 66
		
		elif echo $f| grep -i "RPS"|grep -i "Start"|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
		rpsallowed=1
		echo "RPS game is Started"|xclip -selection clipboard
		adb shell input tap 434 794
		adb shell input tap 111 1184|adb shell input keyevent 66
		fi
	fi
	
	elif [ "$rpsallowed" == 1 ] && echo $f|grep -i "!rpsstart" |grep -e 'talk.kik.com' | grep -e '@groups.kik.com' ; then 
		echo "!RPSstart"|xclip -selection clipboard
	
		adb shell input tap 434 794
			adb shell input tap 111 1184|adb shell input keyevent 66
	
			while true; do
			g=`adb shell "su -c 'sqlite3 /data/data/pikek.night/databases/kikDatabase.db \"select * from messagesTable order by _id desc limit 1\"'"`
			i=`echo $g| cut -d "|" -f 2| tr '[:upper:]' '[:lower:]'`
			k=`shuf -n 1 rps.txt`
				if [[ "$i" == *"$k"* ]] && echo $g|grep -e 'talk.kik.com' | grep -e '@groups.kik.com';then
				echo "I also Choose $k"|xclip -selection clipboard
			
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
				echo "Nobody Won, Draw"|xclip -selection clipboard
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
			
				break
				elif [[ "$i" == *"rock"* ]] && [ "$k" == "paper" ] && echo $g|grep -e 'talk.kik.com' | grep -e '@groups.kik.com';then
				y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
				echo "I Choose $k"|xclip -selection clipboard
			
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
				echo "$y Lost   -1"|xclip -selection clipboard
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
			
				if [ -f ScoresRps/$y ]; then
						q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
						r=`expr $q - 1`	
						echo "[$y: $r]">ScoresRps/$y
					else
				   		echo "[$y: -1]">ScoresRps/$y
					fi
				break
				elif [[ "$i" == *"rock"* ]] && [ "$k" == "scissor" ] && echo $g|grep -e 'talk.kik.com' | grep -e '@groups.kik.com';then
				y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
				echo "I Choose $k"|xclip -selection clipboard
			
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
				echo "$y Won    +1"|xclip -selection clipboard
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
			
				if [ -f ScoresRps/$y ]; then
						q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
						r=`expr $q + 1`	
						echo "[$y: $r]">ScoresRps/$y
					else
				   		echo "[$y: 1]">ScoresRps/$y
					fi
				break
				elif [[ "$i" == *"paper"* ]] && [ "$k" == "scissor" ] && echo $g|grep -e 'talk.kik.com' | grep -e '@groups.kik.com';then
				y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
				echo "I Choose $k"|xclip -selection clipboard
			
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
				echo "$y Lost    -1"|xclip -selection clipboard
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
			
				if [ -f ScoresRps/$y ]; then
						q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
						r=`expr $q - 1`	
						echo "[$y: $r]">ScoresRps/$y
					else
				   		echo "[$y: -1]">ScoresRps/$y
					fi
				break
				elif [[ "$i" == *"paper"* ]] && [ "$k" == "rock" ] && echo $g|grep -e 'talk.kik.com' | grep -e '@groups.kik.com';then
				y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
				echo "I Choose $k"|xclip -selection clipboard
			
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
				echo "$y Won    +1"|xclip -selection clipboard
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
			
				if [ -f ScoresRps/$y ]; then
						q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
						r=`expr $q + 1`	
						echo "[$y: $r]">ScoresRps/$y
					else
				   		echo "[$y: 1]">ScoresRps/$y
					fi
				break
				elif [[ "$i" == *"scissor"* ]] && [ "$k" == "rock" ] && echo $g|grep -e 'talk.kik.com' | grep -e '@groups.kik.com';then
				y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
				echo "I Choose $k"|xclip -selection clipboard
			
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
				echo "$y Lost    -1"|xclip -selection clipboard
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
			
				if [ -f ScoresRps/$y ]; then
						q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
						r=`expr $q - 1`	
						echo "[$y: $r]">ScoresRps/$y
					else
				   		echo "[$y: -1]">ScoresRps/$y
					fi
				break
				elif [[ "$i" == *"scissor"* ]] && [ "$k" == "paper" ] && echo $g|grep -e 'talk.kik.com' | grep -e '@groups.kik.com';then
				y=`echo $g|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
				echo "I Choose $k"|xclip -selection clipboard
			
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
				echo "$y Won    +1"|xclip -selection clipboard
				adb shell input tap 434 794
				adb shell input tap 111 1184|adb shell input keyevent 66
			
				if [ -f ScoresRps/$y ]; then
						q=`cat ScoresRps/$y|sed 's/.*://'|tr -d "[]"`
						r=`expr $q + 1`	
						echo "[$y: $r]">ScoresRps/$y
					else
				   		echo "[$y: 1]">ScoresRps/$y
					fi
				break
				elif echo "$m"| grep -i "!reset"|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
				break
				fi
			done
				
	elif echo $f|grep -i "!RPSScores" |grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	s=`cat ScoresRps/*|sed 's/.$//'|sort -t' ' -n -k2 -r|sed -e 's/$/]/'|head -10`
	echo -e "[Top Charts: RPS]\n\n$s"|xclip -selection clipboard
	
		adb shell input tap 434 794
		adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i "!typeScores" |grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	s=`cat Scores/*|sed 's/.$//'|sort -t' ' -n -k2 -r|sed -e 's/$/]/'|head -10`
	echo -e "[Top Charts: Type]\n\n$s"|xclip -selection clipboard
	
		adb shell input tap 434 794
		adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif [ "$typeallowed" == 1 ] && echo $f|grep -i "!Type" |grep -e 'talk.kik.com' | grep -e '@groups.kik.com' ; then
		w=`shuf -n 1 rockyou.txt|  tr '[:upper:]' '[:lower:]'`
		echo "Type : $w"|xclip -selection clipboard
	
		adb shell input tap 434 794
		adb shell input tap 111 1184|adb shell input keyevent 66
	
			while true; do
				m=`adb shell "su -c 'sqlite3 /data/data/pikek.night/databases/kikDatabase.db \"select * from messagesTable order by _id desc limit 1\"'"| tr '[:upper:]' '[:lower:]'`
				if [[ "$m" == *"$w"* ]]&& echo $m|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
					j=`echo $m|cut -d "|" -f 3|sed 's/[@].*//'|sed 's/....$//'`
					echo "$j Wins   +1"|xclip -selection clipboard
					adb shell input tap 434 794
					adb shell input tap 111 1184|adb shell input keyevent 66
				
					if [ -f Scores/$j ]; then
						q=`cat Scores/$j|sed 's/.*://'|tr -d "[]"`
						r=`expr $q + 1`	
						echo "[$j: $r]">Scores/$j
					else
				   		echo "[$j: 1]">Scores/$j
					fi
				break
				elif echo $m|grep -i "!reset"|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
				break
				fi	
			done
	elif echo $f| cut -d "|" -f 2|grep -i '!revsay' && echo $f|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	adb shell "su -c 'sqlite3 /data/data/pikek.night/databases/kikDatabase.db \"select body from messagesTable order by _id desc limit 1\"'"|awk '{gsub("!revsay", "");print}'|rev|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66

	elif echo $f| cut -d "|" -f 2|grep -i '!say' && echo $f|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo $f |cut -d "|" -f 2|awk '{gsub("!say", "");print}'|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f| cut -d "|" -f 2|grep -i '!revword' && echo $f|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo $f |cut -d "|" -f 2|awk '{gsub("!revword", "");print}'|awk '{ for (i=NF; i>1; i--) printf("%s ",$i); print $1; }'|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f| cut -d "|" -f 2|grep -i '!coolsay' && echo $f|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo $f |cut -d "|" -f 2|awk '{gsub("!coolsay", "!c");print}'|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f| cut -d "|" -f 2|grep -i '!cowsay' && echo $f|grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo $f |cut -d "|" -f 2|awk '{gsub("!cowsay", "");print}'|cowsay|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i "!RPS" |grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	echo "!RPS"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i "!who" |grep -e 'talk.kik.com' | grep -e '@groups.kik.com'| grep -i "Edate"|grep -i "rae"; then
	echo $f|cut -d "|" -f 2 | tr -d "!"|sed -e "s/$/\n\nCompiledPerl/"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66

	elif echo $f|grep -i "!who" |grep -e 'talk.kik.com' | grep -e '@groups.kik.com'| grep -i "Edate"; then
	echo $f|cut -d "|" -f 2 | tr -d "!"|sed -e "s/$/\n\nMassSuicide/"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i "!who" |grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	n=`adb shell "su -c 'sqlite3 /data/data/pikek.night/databases/kikDatabase.db \"select * from memberTable order by _id desc\"'"|grep "$m"|cut -d"|" -f 3|sed 's/[@].*//'|sed 's/....$//'|shuf -n 1`
	echo $f|cut -d "|" -f 2 | tr -d "!"|sed -e "s/$/\n\n$n/"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|grep -i "!magic8" |grep -e 'talk.kik.com' | grep -e '@groups.kik.com'; then
	n=`shuf -n 1 magic8.txt`
	echo $f|cut -d "|" -f 2 | awk '{gsub("!magic8", "");print}'|sed -e "s/$/\n\n$n/"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|cut -d "|" -f 11|grep -e "has joined the chat"; then
	echo "!join"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	elif echo $f|cut -d "|" -f 11|grep -e "has left the chat"; then
	echo "!left"|xclip -selection clipboard
	
	adb shell input tap 434 794
	adb shell input tap 111 1184|adb shell input keyevent 66
	
	fi
done

  
