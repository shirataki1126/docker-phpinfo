#!/bin/sh
# wait until MySQL is really available
ESC="\e["
ESCEND=m
COLOR_OFF=${ESC}${ESCEND}
maxcounter=45

counter=0
echo "Waiting for MySQL"
until mysql --protocol TCP -u "root" -p "$MYSQL_ROOT_PASSWORD" -e "show databases;" &> /dev/null
do
    printf "."
    counter=`expr $counter + 1`
    if [ $counter -gt $maxcounter ]; then
        >&2 echo "We have been waiting for MySQL too long already; failing."
        exit 1
    fi;
    sleep 1
done

echo "${ESC}32${ESCEND}"
echo "\nMySQL ready!!"
echo "${COLOR_OFF}"
