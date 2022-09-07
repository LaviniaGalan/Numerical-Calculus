% a)

A = [10 7 8 7;
    7 5 6 5;
    8 6 10 9;
    7 5 9 10];

b = [32 23 33 31]';

display("a)");

n = length(b);

x = linsolve(A, b)
% x = gauss(n, A, b)

cond_nr = cond(A)


% b)

b_1 = [32.1 22.9 33.1 30.9]';
display("\nb)");

x_1 = linsolve(A, b_1)
% x = gauss(n, A, b)


input_relative_error_b = norm(b - b_1) / norm(b)
output_relative_error_b = norm(x - x_1) / norm(x)
ratio_b = output_relative_error_b / input_relative_error_b


% c)
A_1 = [10 7 8.1 7.2;
      7.08 5.04 6 5;
      8 5.98 9.89 9;
      6.99 4.99 9 9.98];

display("\nc)");
      
x_2 = linsolve(A_1, b)
% x = gauss(n, A, b)


input_relative_error_c = norm(A - A_1) / norm(A)
output_relative_error_c = norm(x - x_2) / norm(x)
ratio_c = output_relative_error_c / input_relative_error_c




