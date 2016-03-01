case "$1" in
    start)
	echo "=========================================Starting USCol Server============================================"
	nohup node bin/www &
	LASTPID=$!
	echo $LASTPID > USCol.pid
    ;;
    stop)
	echo "=========================================Stoping USCol Server============================================"
	FBVISID=$(cat ./USCol.pid)
	echo $FBVISID
	pkill -9 -P $FBVISID
    ;;
esac
exit 0
