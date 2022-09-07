x = [1 1.5 2 3 4];
y = [0 0.17609 0.30103 0.47712 0.60206];

X = [2.5 3.25];


Y = newton(x, y, X)

yi = 1:1/10:3.5;
fn_yi = newton(x, y, yi);
f_yi = log10(yi);

err = max(abs(f_yi .- fn_yi))