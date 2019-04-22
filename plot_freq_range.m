function plot_freq_range(Y, fs)  
  %plot the frequency range:    m = mean(Y);    Y_zero = Y - m;  Y_square = Y_zero .^ 2;  
  L = length(Y);
  NEFT = 2 ^ nextpow2(L);
  z = abs(fft(Y_square, NEFT));
  freq = fs / 2 * linspace(0, 1, NEFT / 2 + 1);
  zplot = z(1:length(freq));
  plot(freq,zplot);
endfunction
