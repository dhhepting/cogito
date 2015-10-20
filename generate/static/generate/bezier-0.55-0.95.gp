

set term png

set output "generate/static/generate/bezier-0.55-0.95.png"
plot '-' smooth bezier notitle
0 0
0.33 0.55
0.67 0.95 
1 1
e

reset;
