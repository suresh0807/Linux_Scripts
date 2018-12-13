# first argument is the column number and second argument is the data file name
awk -v a=$1 '{sum +=$a; n++} END {if(n>0) print "avg: "sum /n;}' $2
awk -v a=$1 '{sum +=$a; n++} END {if(n>0) print "sum: "sum ;}' $2
