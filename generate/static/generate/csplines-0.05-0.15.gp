

set term png

set output "generate/static/generate/csplines-0.05-0.15.png"
plot '-' smooth csplines notitle
0 0
0.33 0.05
0.67 0.15 
1 1
e

reset;
