t = [];

for i=1:9
  t = [t 1/i];
endfor;
  
function cond_nr = cond_vand(t)
  vandermonde_matrix = fliplr(vander(t));
  cond_nr = cond(vandermonde_matrix);
endfunction

for n = 10:15
  t = [t 1/n];
  n
  cond_nr = cond_vand(t)
endfor;