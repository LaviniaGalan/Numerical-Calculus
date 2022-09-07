pkg load splines

time = [0 3 5 8 13];

distance = [0 225 383 623 993];

speed = [75 77 80 74 72];

t = 10;

pol_clamped_spline = spline(time, [speed(1) distance speed(length(speed))]);
pol_deriv = fnder(pol_clamped_spline);

approx_distance = ppval(pol_clamped_spline, t)
approx_speed = ppval(pol_deriv, t)

