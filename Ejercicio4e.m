%% Alumnos

% Ulmete, Nicolás
% Pérez Leonardi, Mariángeles

%% Reset

clear;
clc;

%% Ejercicio e

% Parábola y = sqrt(x) en el intervalo [1, 5]
xValues = linspace(1, 5, 1001);
yValues = sqrt(xValues);

% Armo una matriz M con los pares de coordenadas de la parábola
% Columna 1 = valores de x
% Columna 2 = valores de y
M(:, 1) = xValues;
M(:, 2) = yValues;

xParabola = min(M(:,1)) : 0.004 : max(M(:,1));
yParabola = interp1(M(:,1), M(:,2), xParabola);

x = [xParabola, max(xParabola), min(xParabola)];
y = [yParabola, min(yParabola), min(yParabola)];

% z = x + iy
z = x + 1i * y;

% Funciones w
w1 = z.^2;
w2 = abs(z);
w3 = sqrt(z);
w4 = 3*z.^4 + 2*z.^3 - 4*z.^2 + z - 2;
w5 = (4*z.^2 + 3) ./ (z.^5 + 4*z.^4 + 12*z.^3 - 4*z.^2 - 13*z);

u = 3*x.^2 + sqrt(y);
v = y.^3 + x/y;
w6 = u + 1i * v;

% Figura 31

figure(31);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 4]);
grid on;

subplot(1, 2, 2);
plot(w1);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-5 25 -5 25]);
grid on;

% Figura 32

figure(32);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 4]);
grid on;

subplot(1, 2, 2);
plot(w2);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-1500 2000 -1000 1000]);
grid on;

% Figura 33

figure(33);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 4]);
grid on;

subplot(1, 2, 2);
plot(w3);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([0 3 0 1]);
grid on;

% Figura 34

figure(34);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 4]);
grid on;

subplot(1, 2, 2);
plot(w4);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-1500 2500 -1500 4000]);
grid on;

% Figura 35

figure(35);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 4]);
grid on;

subplot(1, 2, 2);
plot(w5);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-0.1 0.1 -0.2 0.2]);
grid on;

% Figura 36

figure(36);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 4]);
grid on;

subplot(1, 2, 2);
plot(w6);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-20 100 -20 35]);
grid on;
