set term png

set output "generate/static/generate/{{ p0 }}-{{ p1 }}-{{ p2 }}.png"
plot '-' smooth {{ p0 }} notitle
0 0
0.33 {{ p1 }}
0.67 {{ p2 }} 
1 1
e

reset;
