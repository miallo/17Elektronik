reset
set terminal epslatex color
set output 'raumladung2.tex'
set xlabel 'Spannung U $[V]$'
set ylabel 'Anodenstrom $\left(\frac{I_\text A}{1\,\text A}\right)^{2/3}$'
set key bottom right
set xrange [*:18]

f2(x)=a*x+b
set fit logfile 'raum2.log'
fit f2(x) 'heiz2.dat' u 3:(($2**2)**0.333333333) via a,b

p 'heiz2.dat' u 3:(($2**2)**0.333333333) t'$I_\text{H}=\SI{2.0}{\ampere}$', f2(x) t'Lineare Regression'

set output
!epstopdf raumladung2.eps

reset
set terminal epslatex color
set output 'raumladung18.tex'
set xlabel 'Spannung U $[V]$'
set ylabel 'Anodenstrom $\left(\frac{I_\text A}{1\,\text A}\right)^{2/3}$'
set key bottom right
set xrange [*:6.5]

f2(x)=a*x+b
set fit logfile 'raum18.log'
fit f2(x) 'heiz18.dat' u 3:(($2**2)**0.333333333) via a,b

p 'heiz18.dat' u 3:(($2**2)**0.333333333) t'$I_\text{H}=\SI{1.8}{\ampere}$', f2(x) t'Lineare Regression'

set output
!epstopdf raumladung18.eps
reset
set terminal epslatex color
set output 'raumladung19.tex'
set xlabel 'Spannung U $[V]$'
set ylabel 'Anodenstrom $\left(\frac{I_\text A}{1\,\text A}\right)^{2/3}$'
set key bottom right
set xrange [*:10]

f2(x)=a*x+b
set fit logfile 'raum19.log'
fit f2(x) 'heiz19.dat' u 3:(($2**2)**0.333333333) via a,b

p 'heiz19.dat' u 3:(($2**2)**0.333333333) t'$I_\text{H}=\SI{1.9}{\ampere}$', f2(x) t'Lineare Regression'

set output
!epstopdf raumladung18.eps
