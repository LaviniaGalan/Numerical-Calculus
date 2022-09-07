x = [1 2 3 4 5 6 7];
y = [13 15 20 14 15 13 10];

##x = [-3 1 2];
##y = [-4 -2 3];

m = length(x)

a = (m * sum(x .* y) - sum(x) * sum(y)) / (m * sum(x .^ 2) - (sum(x))^2)

b = (sum(x .^ 2) * sum(y) - sum(x .* y) * sum(x)) / (m * sum(x .^ 2) - (sum(x))^2)

p = @(X)(a*X + b);

predicted_temp = p(8)

e_a_b = sum((y .- p(x)) .^ 2)

plot(x, y, 'o');
hold on;

ls_x = -1:0.1:10;
plot(ls_x, p(ls_x));
