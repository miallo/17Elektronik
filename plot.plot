reset
set terminal epslatex color
set output 'heiz18.tex'
set xlabel 'Spannung U $[V]$'
set ylabel 'Anodenstrom $I_\text A \; [A]$'
set key bottom right

p 'heiz18.dat' u 3:2 t'$I_\text{H}=\SI{1.8}{\ampere}$'

set output
!epstopdf heiz18.eps

set output 'heiz19.tex'
set xlabel 'Spannung U $[V]$'
set ylabel 'Anodenstrom $I_\text A \; [A]$'
set key bottom right

p 'heiz19.dat' u 3:2 t'$I_\text{H}=\SI{1.9}{\ampere}$'

set output
!epstopdf heiz19.eps
set output 'heiz2.tex'
set xlabel 'Spannung U $[V]$'
set ylabel 'Anodenstrom $I_\text A \; [A]$'
set key bottom right

p 'heiz2.dat' u 3:2 t'$I_\text{H}=\SI{2.0}{\ampere}$'

set output
!epstopdf heiz2.eps

set output 'heiz.tex'
set xlabel 'Spannung U $[V]$'
set ylabel 'Anodenstrom $I_\text A \; [A]$'
set key bottom right

p 'heiz2.dat' u 3:2 t'$I_\text{H}=\SI{2.0}{\ampere}$','heiz19.dat' u 3:2 t'$I_\text{H}=\SI{1.9}{\ampere}$', 'heiz18.dat' u 3:2 t'$I_\text{H}=\SI{1.8}{\ampere}$'

set output
!epstopdf heiz.eps



set output 'raumladung.tex'
set xlabel 'Spannung U $[V]$'
set ylabel 'Anodenstrom $I_\text A \; [A]$'
set key bottom right

p 'heiz2.dat' u 3:($2**(2/3)) t'$I_\text{H}=\SI{2.0}{\ampere}$'

set output
!epstopdf raumladung.eps
