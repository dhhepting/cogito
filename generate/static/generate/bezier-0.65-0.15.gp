

set term png

set output "generate/static/generate/bezier-0.65-0.15.png"
plot '-' smooth bezier notitle
0 0
0.33 0.65
0.67 0.15 
1 1
e

reset;
