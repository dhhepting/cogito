

set term png

set output "generate/static/generate/unique-0.25-0.75.png"
plot '-' smooth unique notitle
0 0
0.33 0.25
0.67 0.75 
1 1
e

reset;
