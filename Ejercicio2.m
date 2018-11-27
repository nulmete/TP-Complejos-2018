%% Alumnos

% Ulmete, Nicolás
% Pérez Leonardi, Mariángeles

%% Reset

clear;
clc;

%% Cell Array

M = {[1 2 3; 4 5 5; 8 9 9], [4 5 6; 10 1 7; 8 8 8], ...
    [2-3i -3 -4; -2-1i -4+1i 0; 7+4i 4 1i], [2/3 1/3 -1/3; 7/2 2/7 0; 0 0 1], ...
    [1 0 0; 0 -1 0; 0 0 -1], ...
    [1 2 5; -4 3 -1; -1 -1 9], [0 1 3; 0 0 -2; 0 0 0], ...
    [1+sqrt(2)*1i 7 5 4+2i 2; 2 -2 9 11 7; 72-4i 1i 0 -1 4; 9+5i -1 0 1 1+i; 24 0 3 -32 0], ...
    [1 3; 2 4; 5 6], [2 5 3; 1 1 1], ...
    [1 0 5 0 0 0 0 0; 0 3 0 0 0 0 11 0; 0 0 0 0 9 0 0 0; 0 0 6 0 0 0 0 0; 0 0 0 7 0 0 1 0; 2 0 0 0 0 10 0 0; 0 0 0 8 0 0 0 0; 0 4 0 0 0 0 0 12], ...
    [1 1; 2 1], [1 1; 0 1], [1 0 1/10; 0 1 0; 0 0 1], [7 8 9; 1 0 3; 4 5 6]};

%% Operaciones

Y1 = 3 * M{1} * M{2};
Y2 = M{3} * M{4};
Y3 = M{1}^4 * M{5}^2;
Y4 = M{6} * M{7}^3;
Y5 = inv(M{8});
Y6 = M{9} * M{10};
Y7 = det(M{11});
Y8 = M{12}^45;
Y9 = M{13}^45;
Y10 = M{14}^743;
Y11 = M{15}.^M{15};

%% Resultados

disp('Ejercicio a): ');
disp(Y1);

disp('Ejercicio b): ');
disp(Y2);

disp('Ejercicio c): ');
disp(Y3);

disp('Ejercicio d): ');
disp(Y4);

disp('Ejercicio e): ');
disp(Y5);

disp('Ejercicio f): ');
disp(Y6);

disp('Ejercicio g): ');
disp(Y7);

disp('Ejercicio h): ');
disp(Y8);

disp('Ejercicio i): ');
disp(Y9);

disp('Ejercicio j): ');
disp(Y10);

disp('Ejercicio k): ');
disp(Y11);