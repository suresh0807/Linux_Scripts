#average minus plus - must be all positive values!
a=`awk -v s=$1 'BEGIN{min=10000000000}{if($s<min) {min=$s}} END{print  min}' $2`
b=`awk -v s=$1 'BEGIN{max=-10000000000}{if($s>max) {max=$s}} END{print max}' $2`
c=`awk -v s=$1 '{sum +=$s; n++} END {if(n>0) print sum /n;}' $2`
echo "min $a max $b avg $c"
d=`echo "$c-$a"|bc -l`
e=`echo "$b-$c"|bc -l`
echo "$c $e $d"
