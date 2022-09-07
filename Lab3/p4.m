n = 4;

function err = f(n)
  x = linspace(-5, 5, n + 1);
  y = 1 ./ (1 + x.^2);
  
  X = -5:0.1:5;
  Y = fct_lagrange(x, y, X);
  Y_f = 1 ./ (1 + X.^2);
  
  err = max(abs(Y_f .- Y));
  
  plot(X, Y, 'DisplayName', strcat('Lmf n = ', num2str(n)));
  hold on;
  
  plot(X, Y_f, 'DisplayName', 'f(x)');

  legend;
  
endfunction;


for n=2:2:8
  err = f(n);
  disp(strcat("n =  ", num2str(n), "; error =  ", num2str(err)));
endfor;