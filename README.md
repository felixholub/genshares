# GENSHARES
This is a simple program which calculates row-wise shares of a variable list. It will later be extended to allow for more customization.

# Installation

In Stata, simply run
```
cap ado uninstall genshares
net install genshares, from(https://github.com/felixholub/genshares/raw/master/src/)
```

# Usage

```
webuse union, clear
keep year grade
contract year grade
rename _freq size_
reshape wide size_, i(year) j(grade)
genshares size*
```
