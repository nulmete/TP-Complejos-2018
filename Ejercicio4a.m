%% Alumnos

% Ulmete, Nicolás
% Pérez Leonardi, Mariángeles

%% Reset

clear;
clc;

%% Función analítica

% Una función "f" de variable compleja "z" es analítica en un punto
% z0 si tiene una derivada en cada punto en un entorno de z0.

% Una función "f" es analítica en un conjunto abierto si tiene derivada
% en cada punto del conjunto. Si se habla de una función "f" que es
% analítica en un conjunto "S" que no es abierto, se entiende que
% "f" es analítica en un conjunto abierto que contiene a "S".

%% Ejercicio a

% Circunferencia: (x - x0)^2 + (y - y0)^2 = r^2
% Circunferencia de radio 1 centrada en (0,0): x^2 + y^2 = 1

% Los valores de "x" están entre -1 y 1 (radio = 1)
x = -1:0.001:1;

% Despejo y^2 = 1 - x^2
y1 = sqrt(1 - x.^2);
y2 = -sqrt(1 - x.^2);

% Uno los valores de ambas ecuaciones
x = horzcat(x, flip(x));
y = horzcat(y1, y2);

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

% Figura 7

figure(7);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-2 2 -2 2]);
grid on;

subplot(1, 2, 2);
plot(w1);
title('Función transformada (ANALÍTICA)');
axis image;
axis([-2 2 -2 2]);
grid on;

% Figura 8

figure(8);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-2 2 -2 2]);
grid on;

subplot(1, 2, 2);
plot(w2);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-2000 6000 -2000 2000]);
grid on;

% Figura 9

figure(9);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-2 2 -2 2]);
grid on;

subplot(1, 2, 2);
plot(w3);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-2 2 -2 2]);
grid on;

% Figura 10

figure(10);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-2 2 -2 2]);
grid on;

subplot(1, 2, 2);
plot(w4);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-10 10 -10 10]);
grid on;

% Figura 11

figure(11);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-2 2 -2 2]);
grid on;

subplot(1, 2, 2);
plot(w5);
title('Función transformada (ANALÍTICA)');
axis image;
axis([-2 2 -10 10]);
grid on;

% Figura 12

figure(12);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-2 2 -2 2]);
grid on;

subplot(1, 2, 2);
plot(w6);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-2 5 -2 2]);
grid on;