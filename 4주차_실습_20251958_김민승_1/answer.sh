if [ $# -eq 0 ] ; then
	echo "Usage: 'basename $0' searchfor [... searchfor]"
	echo "(You didn't tell me what you want to search for.)"
	exit 1
fi

query=$1
shift
for i in "$@"; do
	query="$query|$i"
done

egrep -i "($query)" mydata.txt | awk -f display.awk


