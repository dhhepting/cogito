

set term png

set output "generate/static/generate/unique-0.75-0.65.png"
plot '-' smooth unique notitle
0 0
0.33 0.75
0.67 0.65 
1 1
e

reset;
