function Y_second = derivatives2(X, Y)  L = length(Y);  Y_second  = zeros(L, 1);  for i = 4:L - 4;    Y_second(i) = 4 * Y(i) + (Y(i + 1) + Y(i - 1)) - 2 * (Y(i + 2) + Y(i - 2)) - (Y(i + 3) + Y(i - 3));    Y_second(i) /= 16 * (X(i + 3) - X(i - 3)) ^ 2;  endfor  
endfunction
