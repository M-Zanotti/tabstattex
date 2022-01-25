{smcl}
{hline}
help for {hi:tabstattex}
{hline}

{title:Tex export for tabstat}

{p 8 12 2}
{cmd:tabstattex} {it:varlist} {ifin} [{cmd:,} {help tabstattex##tabstatopt:{it:tabstat_options}}]  {help tabstattex##latexopt:{it:latex_options}}



{title:Description}

{p 4 4 2}{cmd:tabstattex} Tex export for tabstat
Must-added Tex packages (in .tex file):


{synopt:{space 4}\usepackage{booktabs}}{p_end}
{synopt:{space 4}\usepackage{caption}}{p_end}
{synopt:{space 4}\usepackage{hyperref}}{p_end}
{synopt:{space 4}\usepackage[utf8]{inputenc}}{p_end}
{synopt:{space 4}\usepackage{pdfpages}}{p_end}
{synopt:{space 4}\usepackage{rotating}}{p_end}
{synopt:{space 4}\usepackage{tabularx}}{p_end}
{synopt:{space 4}\usepackage{array}}{p_end}
{synopt:{space 4}\usepackage{gensymb}}{p_end}
{synopt:{space 4}\usepackage{multirow}}{p_end}
{synopt:{space 4}\usepackage{pdflscape}}{p_end}
{synopt:{space 4}\usepackage{etoolbox}}{p_end}
{synopt:{space 4}\usepackage{color}}{p_end}
{synopt:{space 4}\usepackage{colortbl}}{p_end}

Moreover: 

{synopt:{space 4}\renewcommand{\arraystretch}{1.1}}{p_end}
{synopt:{space 4}\newcolumntype{Z}{>{\centering\arraybackslash}X}}{p_end}

{synopt:{space 4}\newcommand\setrow[1]{\gdef\rowmac{#1}#1\ignorespaces}}{p_end}
{synopt:{space 4}\newcolumntype{$}{>{\global\let\currentrowstyle\relax}}}{p_end}
{synopt:{space 4}\newcolumntype{^}{>{\currentrowstyle}}}{p_end}
{synopt:{space 4}\newcommand{\rowstyle}[1]{\gdef\currentrowstyle{#1}#1\ignorespaces}}{p_end}


{marker tabstatopt}{title:tabstat options}

{p 4 8 2}{cmd:by(varname)}: Specify {it:varlist} variables.

Available stats code:

{synoptset 17}{...}
{synopt:{space 4}{it:statname}}Definition{p_end}
{space 4}{synoptline}
{synopt:{space 4}{opt me:an}} Mean{p_end}
{synopt:{space 4}{opt co:unt}} Number of observations{p_end}
{synopt:{space 4}{opt n}} Equivalent to {cmd:count}{p_end}
{synopt:{space 4}{opt su:m}} Summation{p_end}
{synopt:{space 4}{opt ma:x}} Max{p_end}
{synopt:{space 4}{opt mi:n}} Min{p_end}
{synopt:{space 4}{opt r:ange}} Min-Max Range {p_end}
{synopt:{space 4}{opt sd}} Standard Deviation{p_end}
{synopt:{space 4}{opt v:ariance}} Variance{p_end}
{synopt:{space 4}{opt cv}} Variation Coefficient ({cmd:sd/mean}){p_end}
{synopt:{space 4}{opt sem:ean}} Mean Standard Error ({cmd:sd/sqrt(n)}){p_end}
{synopt:{space 4}{opt sk:ewness}} Skewness{p_end}
{synopt:{space 4}{opt k:urtosis}} Kurtosis{p_end}
{synopt:{space 4}{opt p1}} 1° percentile{p_end}
{synopt:{space 4}{opt p5}} 5° percentile{p_end}
{synopt:{space 4}{opt p10}} 10° percentile{p_end}
{synopt:{space 4}{opt p25}} 25° percentile{p_end}
{synopt:{space 4}{opt med:ian}} Median ({opt p50}){p_end}
{synopt:{space 4}{opt p50}} 50° percentile ({opt median}){p_end}
{synopt:{space 4}{opt p75}} 75° percentile{p_end}
{synopt:{space 4}{opt p90}} 90° percentile{p_end}
{synopt:{space 4}{opt p95}} 95° percentile{p_end}
{synopt:{space 4}{opt p99}} 99° percentile{p_end}
{synopt:{space 4}{opt iqr}} Interquartile Range = {opt p75} - {opt p25}{p_end}
{synopt:{space 4}{opt q}} Equivalent to {cmd:p25 p50 p75}{p_end}
{space 4}{synoptline}
{p2colreset}{...}

{p 4 8 2}{cmdab:c:olumns(}{cmdab:v:ariables|}{cmdab:s:tatistics)}: specify column informations. {cmd:variables} display variables in {it:varlist} (default), {cmd:statistics}
Display stats in option {cmd:statistics({it:statname})}.

{p 4 8 2}{opt f:ormat}{cmd:(%}{it:{help format:fmt}}{cmd:)} specify display format. Default format is {cmd:%12.2gc}.

{p 4 8 2}{opt not:otal} avoid display general stats; only with {opt by(varname)}.

{p 4 8 2}{opt m:issing} get stats also for missing {opt by(varname)}.



{marker latexopt}{title:latex options}

{p 4 8 2}{cmd:texfile(filename)}:  File .tex name (with path).

{p 4 8 2}{cmd:caption(string)}: Table caption in .tex file.

{p 4 8 2}{cmd:label(string)}: Reference label for .tex file. Notice the prefix "tbl" is added for standard convenience; e.g. {cmd:label(Tab1)} will produce the following Tex text in the .tex file \label{tbl:Tab1}.

{p 4 8 2}{cmd:position(string)}: specify table position in .tex file. Default is {cmd:position(!htp)}

{p 4 8 2}{cmd:note(string)}: Footnote table text.

{p 4 8 2}{cmd:landscape}: Landscape table.

{p 4 8 2}{cmd:fontsize(string)}: Late fonstsize, i.e: Huge, huge, LARGE, Large, large, normalsize (default), small, footnotesize, scriptsize e tiny.




{title:Examples}

{p 4 8 2}{cmd:. tabstattex profit Gat beta, stat(n mean sd p5 p25 p50 p75 p95) col(stat) texfile(Tab1.tex) caption("Tab1_SummaryStats")
}{p_end}



{title:Author}

{p 4 4 2}Marco Zanotti{break}
marco.zanotti@usi.ch{break}
m.zanotti00@gmail.com


{title:Acknowledgments}

{p 4 4 2}
GNU General Public License


{title:References}




{title:Also see}

{p 4 13 2}Online:
{help tabstat}