clear all
set more off

cd "D:\vsc_econ"

// load data
use ".\data\auto.dta", clear

//regression
reghdfe price mpg weight, absorb(foreign)
outreg2 using ".\output\reg1.tex", replace