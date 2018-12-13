awk '{for(i=1;i<=NF;i++) { if($i>0) {printf "0.00 "} else {printf "%s ", $i}};print ""}' $1 > A
awk '{for(i=1;i<=NF;i++) { if($i>0) {printf "0.00 "} else {printf "%s ", $i}};print ""}' $2 > B
#paste $1 $2 | awk '{for (i=1;i<=NF/2;i++) printf "%s ", ($i==$i+0)?$i-$(i+NF/2):$i; print ""}' > $3
paste A B | awk '{for (i=1;i<=NF/2;i++) printf "%s ", ($i==$i+0)?$i-$(i+NF/2):$i; print ""}' > $3
awk '{for(i=1;i<=NF;i++) { if($i==0) {printf "NaN "} else {printf "%s ", $i}};print ""}' $3 > A
mv A $3
#rm A B
