f = @(x) (100 ./ (x.^2) .* sin(10./x));
x_plot = 1:0.01:3;
f_plot = f(x_plot);
plot(x_plot, f_plot);

a = 1;
b = 3;
epsilon = 10^(-4);

function s = simpson(a, b, f)
  s = (b - a) / 6 * (f(a) + f(b) + 4*f((a + b)/2));
endfunction;


function i = adquad(a, b, f, epsilon)
  i1 = simpson(a, b, f);
  i2 = simpson(a, (a+b)/2, f) + simpson((a+b)/2, b, f);
  if abs(i2 - i1) < 15 * epsilon
    i = i2;
    return;
  else
    i = adquad(a, (a+b)/2, f, epsilon/2) + adquad((a+b)/2, b, f, epsilon/2);
  endif;
endfunction;

i_adquad = adquad(a, b, f, 10^(-4))
display("");

exact_value = -1.4260247818;

i_simpson_50 = RSF(f, a, b, 50)
diff_50 = abs(exact_value - i_simpson_50)

display("");
i_simpson_100 = RSF(f, a, b, 100)
diff_100 = abs(exact_value - i_simpson_100)
