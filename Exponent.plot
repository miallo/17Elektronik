reset
set terminal epslatex color

set output 'exp.tex'
set xlabel '$\ln(U_\text{ges}) \; [\ln(V)]$'
set ylabel '$\ln(I_\text A) \; [\ln(A))]$'
set key bottom right
set xrange [*:2]
f(x)=m*x+b
set fit logfile 'exp18.log'
fit f(x) 'heiz18.dat' u (log($3+1.38)):(log($2/1000)) via m,b
set xrange [*:2.5]
g(x)=n*x+v
set fit logfile 'exp19.log'
fit g(x) 'heiz19.dat' u (log($3+1.62)):(log($2/1000)) via n,v
set xrange [*:3]
h(x)=y*x+c
set fit logfile 'exp2.log'
set xrange [*:2.4]
fit h(x) 'heiz2.dat' u (log($3+1.9)):(log($2/1000)) via y,c
p 'heiz18.dat' u (log($3+1.38)):(log($2/1000)) t'$I_\text{H}=\SI{1.8}{\ampere}$' lt 1, f(x) lt 1, 'heiz19.dat' u (log($3+1.62)):(log($2/1000)) t'$I_\text{H}=\SI{1.9}{\ampere}$' lt 2, g(x) lt 2, 'heiz2.dat' u (log($3+1.9)):(log($2/1000)) t'$I_\text{H}=\SI{2}{\ampere}$' lt 3, h(x) lt 3


set output
!epstopdf exp.eps
