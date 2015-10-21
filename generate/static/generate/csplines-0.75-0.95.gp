

set term png

set output "generate/static/generate/csplines-0.75-0.95.png"
plot '-' smooth csplines notitle
0 0
0.33 0.75
0.67 0.95 
1 1
e

reset;
