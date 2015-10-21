

set term png

set output "generate/static/generate/bezier-0.05-0.45.png"
plot '-' smooth bezier notitle
0 0
0.33 0.05
0.67 0.45 
1 1
e

reset;
