clear all
set more off

cd "C:\Users\seokh\Desktop\3rd year\Data science\week9"

import delimited "Detrend_France_vs_Germany.csv" 

foreach i in france germany{
regress `i' year
predict `i'_pred
gen `i'_error = `i'-`i'_pred
}


export delimited using "Detrended_FvsG.csv", replace
