

set term png

set output "generate/static/generate/csplines-0.45-0.45.png"
plot '-' smooth csplines notitle
0 0
0.33 0.45
0.67 0.45 
1 1
e

reset;