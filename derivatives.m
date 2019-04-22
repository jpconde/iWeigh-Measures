function Y_prime = derivatives(X, Y)    L = length(Y);  Y_prime = zeros(L, 1);  for i=4:L - 4;    Y_prime(i) = (Y(i + 3) - Y(i - 3)) / (X(i + 3) - X(i - 3)) + (Y(i + 2) - Y(i - 2)) / (X(i + 2) - X(i - 2)) + (Y(i + 1) - Y(i - 1)) / (X(i + 1) - X(i - 1));    Y_prime(i) /= 3;  endfor
endfunction
