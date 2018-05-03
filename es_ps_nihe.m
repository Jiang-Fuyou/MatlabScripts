PSTAR = 100;
ESMAX = 0.6;
ALPHA = 2.0;

ES1 = [0:0.0001:0.2];
ES2 = [0.2001:0.0001:0.38];
ES3 = [0.3801:0.0001:0.8];

PS1 = 1.444664 * PSTAR * ES1.^ALPHA ./ (0.282990 - ES1);
PS2 = exp(168.0 * ES2.^2.133580 ./ (1 + 10.0 * ES2.^2.133580)) + 9.414575;
PS3 = 0.1473 * exp(5.156420 * ES3 + 10) - 1.097612E4;

ES = [ES1, ES2, ES3];
PS = [PS1, PS2, PS3];

EST = ES';
PST = PS';

plot(ES, PS)