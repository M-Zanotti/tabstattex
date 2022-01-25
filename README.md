# tabstattex
Command for exportin `tabstat` results in Tex (Stata).

# 🖥 Installing

In Stata, type command:

```sh
net from https://raw.githubusercontent.com/M-Zanotti/tabstattex/main/
```

Then click on: `tabstattex`,   

Finally select: `click here to install`


# 🚀 Using

Similar to the original `tabstat` Stata command, with few more options for Tex file such as .tex file name, table caption, etc.

For using details see `help`file:
```sh
help tabstattex
```


Example:

```sh
tabstattex profit Gat beta, stat(n mean sd p5 p25 p50 p75 p95) col(stat) texfile(Tab1.tex) caption("Tab1_SummaryStats")
```

Export statistics `(n mean sd p5 p25 p50 p75 p95)` for variables `profit`, `Gat`, and `beta`, generating .tex file `Tab1.tex` with caption (above table) `Tab1_SummaryStats`.

# Author
👤 **Marco Zanotti**

- Github: [@M-Zanotti](https://github.com/M-Zanotti)
- LinkedIn: [Marco Zanotti](https://www.linkedin.com/in/marco-zanotti-a3a615b3/)


