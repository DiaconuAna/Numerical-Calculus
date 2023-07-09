% ex.1 - approximate population

x = [1930, 1940, 1950, 1960, 1970, 1980];
y = [123203, 131669, 150697, 179323, 203212, 226505];
xx = [1955, 1995];

round(BarycentricInterpolation(x,y,xx))