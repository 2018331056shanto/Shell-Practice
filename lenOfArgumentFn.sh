file(){
	echo "i am shanto "
	echo $#
}
args=($@)
if [ ! $# -lt 1 ]
then
	file $*
fi



