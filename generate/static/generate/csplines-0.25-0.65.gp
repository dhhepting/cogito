

set term png

set output "generate/static/generate/csplines-0.25-0.65.png"
plot '-' smooth csplines notitle
0 0
0.33 0.25
0.67 0.65 
1 1
e

reset;
