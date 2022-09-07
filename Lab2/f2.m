% 2.

% a)
t = -1:0.01:1

t1 = cos(acos(t))
t2 = cos(2 * acos(t))
t3 = cos(3 * acos(t))

%subplot(1, 3, 1)
plot(t, t1);
hold on;
plot(t, t2);
plot(t, t3);
hold off;
##title("T1")
##
##subplot(1, 3, 2)
##plot(t, t2)
##title("T2")
##
##subplot(1, 3, 3)
##plot(t, t3)
##title("T3")

% b)



function n_chebyshev1(n)
  t = -1:0.01:1;
  first = t.^0;
  second = t;
  
  plot(t, first, 'DisplayName', 'T0');
  hold on;
  plot(t, second, 'DisplayName', 'T1');
  hold on;

  for i=2:n-1
    new = 2*t.*second - first;
    
    plot(t, new, 'DisplayName', strcat("T", num2str(i)));
    hold on;
    
    first = second;
    second = new;
  endfor;
  
  hold off;
  legend
end;

n_chebyshev1(10);








