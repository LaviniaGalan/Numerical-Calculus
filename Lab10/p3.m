A = [1 1 1 1;
     2 3 1 5
     -1 1 -5 3
     3 1 7 -2];
     
b = [10 31 -2 18]';

n = length(b);

x = gauss(n, A, b)

% x_1 = linsolve(A, b)