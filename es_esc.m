ES = [0:0.001:0.6];

SIGMA = ES .* ((1 - ES).^4 ...
        ./ (1 + 4 * ES + 4 * ES.^2 - 4 * ES.^3 + ES.^4)).^0.5;

ESC = ES + 2.5 * SIGMA;

plot(ES, ESC, 'r', ES, ES, 'b')