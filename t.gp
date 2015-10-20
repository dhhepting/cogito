set term png

set output "generate/static/generate/csplines-0.95-0.25.png"
plot '-' smooth csplines notitle
0 0
0.33 0.95
0.67 0.25 
1 1
e

reset;
