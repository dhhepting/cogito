

set term png

set output "generate/static/generate/unique-0.55-0.55.png"
plot '-' smooth unique notitle
0 0
0.33 0.55
0.67 0.55 
1 1
e

reset;
