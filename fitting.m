load('C:\Users\Jiang Yong\Desktop\x.dat')
load('C:\Users\Jiang Yong\Desktop\y.dat')

syms t;

%f = fittype('exp(a * t + b) + c', 'independent', 't', ...
%   'coefficients', {'a', 'b', 'c'});

%f = fittype('exp(a * t - b) + c', 'independent', 't', ...
%   'coefficients', {'a', 'b', 'c'});

%f = fittype('a * t^b / (c - t^d) + e', 'independent', 't', ...
%    'coefficients', {'a', 'b', 'c', 'd', 'e'});

f = fittype('exp(b * t)', 'independent', 't', ...
    'coefficients', { 'b'});


cfun = fit(x, y, f);

xi = 0:0.001:0.1;
yi = cfun(xi);

cfun

figure

plot(x, y, 'r*', xi, yi, 'b-');
set(gca, 'YScale', 'log')