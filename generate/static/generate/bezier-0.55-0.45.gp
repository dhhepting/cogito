set term png

set output "generate/static/generate/bezier-0.55-0.45.png"
plot '-' smooth bezier-0.55-0.45 notitle
0 0
0.33 bezier
0.67 0.55 
1 1
e

reset;
