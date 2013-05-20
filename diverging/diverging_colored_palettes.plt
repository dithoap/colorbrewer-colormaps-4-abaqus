# example code for gnuplot-colorbrewer
# for use with diverging data in splot mode
# compatible with gnuplot >=4.2
# author: Anna Schneider

# set up output
set output 'diverging_colored_palettes.ps'
set terminal postscript color solid enhanced lw 5 "Helvetica"

# set up view, following http://gnuplot.sourceforge.net/demo/pm3dcolors.4.gnu
set format cb "%3.1f"
unset key
set view map
set samples 101, 101
set isosamples 2, 2
set style data pm3d
set style function pm3d
set noxtics
set noytics
set noztics
set xrange [ -10.0000 : 10.0000 ] noreverse nowriteback
set cbrange [ 0.00000 : 1.00000 ] noreverse nowriteback
set pm3d explicit at b
f(x)=(x+10)/20
GPFUN_f = "f(x)=(x+10)/20"

# plot with BrBG
set title 'BrBG'
load 'BrBG.plt'
splot f(x)

# plot with PiYG
set title 'PiYG'
load 'PiYG.plt'
splot f(x)

# plot with PuGn
set title 'PuGn'
load 'PuGn.plt'
splot f(x)

# plot with PuOr
set title 'PuOr'
load 'PuOr.plt'
splot f(x)

# plot with RdBu
set title 'RdBu'
load 'RdBu.plt'
splot f(x)

# plot with RdGy
set title 'RdGy'
load 'RdGy.plt'
splot f(x)

# plot with RdYlBu
set title 'RdYlBu'
load 'RdYlBu.plt'
splot f(x)

# plot with RdYlGn
set title 'RdYlGn'
load 'RdYlGn.plt'
splot f(x)

# plot with Spectral
set title 'Spectral'
load 'Spectral.plt'
splot f(x)