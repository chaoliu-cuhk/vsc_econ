clear all
set more off

cd "D:\vsc_econ"

// load data
use ".\data\auto.dta", clear

//regression
reghdfe price mpg weight, absorb(foreign)
outreg2 using ".\output\reg1.tex", replace

//plot
twoway (scatter price mpg if foreign==0) (scatter price mpg if foreign==1), legend(label(1 "Domestic") label(2 "Foreign")) ytitle(Price) xtitle(MPG) title("Price vs. MPG by Origin") name("fig1", replace)
graph export ".\output\fig1.png", replace