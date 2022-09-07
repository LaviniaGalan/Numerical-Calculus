% 1.
% a) l1
x = 0:0.01:1;
l1 = x;

% b) l2
l2 = 3/2 * x.^2 - 1/2;

% c) l3
l3 = 5/2 * x.^3 - 3/2 * x;

% d) l4
l4 = 35/8 * x.^4 - 15/4 * x.^2 + 3/8;

subplot(2, 2, 1)
plot(x, l1)
title("l1")

subplot(2, 2, 2)
plot(x, l2)
title("l2")

subplot(2, 2, 3)
plot(x, l3)
title("l3")

subplot(2, 2, 4)
plot(x, l4)
title("l4")




