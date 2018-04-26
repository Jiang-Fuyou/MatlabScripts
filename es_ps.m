ESMAX = 0.6;
PSTAR = 10;
ALPHA = 2.0;

SMALL = ESMAX * 0.004;
STEMP = ESMAX - SMALL;


ES1 = [0.0 : 0.0001 : STEMP];
ES2 = [STEMP : 0.0001 : 0.8];

PS1 = PSTAR * ES1 .^ ALPHA ./ (ESMAX - ES1);
PS2 = PSTAR * STEMP ^ ALPHA / SMALL + 6.25 * 1E4 * PSTAR * (ES2 - STEMP);


plot(ES1, PS1, 'r', ES2, PS2, 'r')
set(gca, 'YScale', 'log')