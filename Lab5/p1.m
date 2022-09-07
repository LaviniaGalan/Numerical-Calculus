pkg load symbolic
warning('off', 'all');

time = [0 3 5 8 13];
distance = [0 225 383 623 993];
speed = [75 77 80 74 72];

t = [10];
##time = [-1 1];
##distance = [-3 1];
##speed = [10 2];

syms X
pol = hermite(time, distance, speed, X);
pol_div = diff(pol);

approx_distance = double(vpa(subs(pol, X, t)))
approx_speed = double(vpa(subs(pol_div, X, t)))

