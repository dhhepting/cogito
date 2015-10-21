

set term png

set output "generate/static/generate/unique-0.45-0.95.png"
plot '-' smooth unique notitle
0 0
0.33 0.45
0.67 0.95 
1 1
e

reset;
