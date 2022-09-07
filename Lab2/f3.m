% 3)


function taylor_exp1(int_min, int_max, step, x0, n)
  t = int_min:step:int_max;
  p0 = (t.- x0).^0;
  first = p0;
  
  plot(t, first, 'DisplayName', "P0");
  hold on;
  
  for k=1:n-1
    new = first + (t.-x0).^k / factorial(k) * exp(x0);
   
    plot(t, new, 'DisplayName', strcat("P", num2str(k)))
    hold on;
    
    first = new;
  endfor;
  
  hold off;
  legend;
end;

taylor_exp1(-1, 3, 0.01, 0, 6);
