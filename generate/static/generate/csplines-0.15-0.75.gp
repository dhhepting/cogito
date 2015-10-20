set term png

set output "generate/static/generate/csplines-0.15-0.75.png"
plot '-' smooth csplines notitle
0 0
0.33 0.15
0.67 0.75 
1 1
e

reset;
