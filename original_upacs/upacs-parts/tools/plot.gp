set encoding utf8
set grid
set border 31 lt -1 lw 2
set xlabel 'loop size'

set key box
set key bottom right
set key below

set ylabel 'Memory Performance [GB/s]'
set terminal postscript portrait enhanced color 14 size 6,7
set output 'memb.eps'
load 'muscl.gp'
load 'cfacev.gp'
load 'flux.gp'
load 'rhscv.gp'
load 'rhs.gp'

exit
set ylabel 'Memory Performance [GB/s]'
set terminal emf color enhanced size 768,892 font "Helvetica,16" fontscale 1
set output 'muscl.emf'
load 'muscl.gp'
set output 'cfacev.emf'
load 'cfacev.gp'
set output 'flux.emf'
load 'flux.gp'
set output 'rhscv.emf'
load 'rhscv.gp'
set output 'rhs.emf'
load 'rhs.gp'
