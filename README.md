# tabstattex
Export tabstat command's results in Tex (Stata).

@M.Zanotti; Jan,25 2022

- Installing
In Stata, command:

. net from https://raw.githubusercontent.com/M-Zanotti/tabstattex/master/

And "click here to install"

- Using
Similar to the original "tabstat" Stata command, with few more options for Tex file.

texfile(filename.tex)
caption("Table caption")

e.g.

. tabstattex profit Gat beta, stat(n mean sd p5 p25 p50 p75 p95) col(stat) texfile(Tab1.tex) caption("Tab1_SummaryStats")

