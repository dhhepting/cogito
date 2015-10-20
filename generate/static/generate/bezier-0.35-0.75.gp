set term png

set output "generate/static/generate/bezier-0.35-0.75.png"
plot '-' smooth bezier notitle
0 0
0.33 0.35
0.67 0.75 
1 1
e

reset;
