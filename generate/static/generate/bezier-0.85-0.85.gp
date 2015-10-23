

set term png

set output "generate/static/generate/bezier-0.85-0.85.png"
plot '-' smooth bezier notitle
0 0
0.33 0.85
0.67 0.85 
1 1
e

reset;
