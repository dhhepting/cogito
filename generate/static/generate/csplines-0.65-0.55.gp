

set term png

set output "generate/static/generate/csplines-0.65-0.55.png"
plot '-' smooth csplines notitle
0 0
0.33 0.65
0.67 0.55 
1 1
e

reset;
