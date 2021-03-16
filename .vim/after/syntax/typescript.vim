syn match coffeeComment "#.*$" display
syn region coffeeComment start=/\/\*/ end=/\*\//
syn region coffeeComment start=/###/ end=/###/


syn match coffeeOperator ">" display


hi def link coffeeComment Comment
hi def link coffeeOperator Operator

