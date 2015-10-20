

set term png

set output "generate/static/generate/csplines-0.85-0.05.png"
plot '-' smooth csplines notitle
0 0
0.33 0.85
0.67 0.05 
1 1
e

reset;
