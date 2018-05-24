*! 0.1              24may2018
*! Felix Holub      feholub@mail.uni-mannheim.de
program genshares
    version 15.1
    syntax varlist
    tempvar total
    egen `total' = rowtotal(`varlist')
    foreach vary in `varlist'{
        gen `vary'_share = `vary' / `total'
    }
end
