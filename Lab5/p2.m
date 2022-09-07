pkg load symbolic

x = [1 2];
f = [0 0.6931];
f_deriv = [1 0.5];

X = [1.5];

approx_f = hermite(x, f, f_deriv, X)

err = abs(approx_f - log(X))
