-- comment

n = 5 -- define variable
R = QQ[x_1 .. x_n] -- define a polynomial ring

f = x_1 + x_2^2 + x_3^3 -- creating polynomials

-- univariate polynomial ring (exercises from Week 1)
QQ[x]
f = x^3 + 4*x^2 - x - 4
g = x^6 - x^2 + x + 1

help gcd -- help page in the session
viewHelp gcd -- help page in browser

h = gcd(f, g)

f / h -- produces an elements of K(x) fraction field 
q = f // h -- division with remainder (return the quotient)

r = f % h -- remainder of the division
g % h


I = ideal(f, g) -- lazy constructor
mingens I -- simple linear(ish) reduction of the generators

help mingens
help (mingens, Ideal )

gens gb I -- for later: computing a minimal groeber basis

-- example function
func = (a,b,c) -> (
    d := a + b; -- new objects defined with :=, expressions end with ;
    c * d -- last line (if it has no ; at the end) is the output
    )


func2 = (a,b,c) -> (
    d := a + b; -- new objects defined with :=, expressions end with ;
    return (c * d) -- another way to return a value
    )

func(x, x+1, x+2)
factor oo -- oo means the last output
factor o29 -- o29 means the output from line 29

func2(x, x+3, x+5)

-- ideal membership
I
h = x^2 + x + 1

h % I -- computes division with remainder of h divides by gens of I
-- zero iff h belongs to I

zero(h % I) -- is a value zero?

-- direct equality check of zero using the zero of the ring 
(h % I) == 0_(ring h) -- `ring h` means the ring containing h (every polynomial belongs to one ring only)
0_R -- the copy of 0 living in R
describe R -- explain what's in the ring


-- Question C1 Week 2 (check why this is correct!)
R = QQ[x_0 .. x_5]
S = QQ[x,y,z]

phi' = map(S, R, {x^2, y^2, z^2, x*y, x*z, y*z})
ker phi' -- ideal I claim to define the Veronese Surface in P^5
