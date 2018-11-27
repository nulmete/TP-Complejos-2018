%% Alumnos

% Ulmete, Nicolás
% Pérez Leonardi, Mariángeles

%% Reset

clear;
clc;

%% Ejercicio b

% Elipse de eje focal horizontal: ((x - x0)^2)/a^2 + ((y - y0)^2)/b^2 = 1
% Radio vertical = 2 = b; Radio horizontal = 4 = a; Centro = (2, 2)
% Ecuación de la elipse: ((x - 2)^2)/16 + ((y - 2)^2)/4 = 1

% Los valores de "x" están entre -1 y 1 (radio = 1)
x = -2:0.001:6;

% Despejo y
y1 = (1/2) * (4 - sqrt(-x.^2 + 4*x + 12));
y2 = (1/2) * (sqrt(-x.^2 + 4*x + 12) + 4);

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

% Figura 13

figure(13);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-4 8 -2 6]);
grid on;

subplot(1, 2, 2);
plot(w1);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-50 50 -30 50]);
grid on;

% Figura 14

figure(14);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-4 8 -2 6]);
grid on;

subplot(1, 2, 2);
plot(w2);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-5000 20000 -5000 5000]);
grid on;

% Figura 15

figure(15);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-4 8 -2 6]);
grid on;

subplot(1, 2, 2);
plot(w3);
title('Función transformada (ANALÍTICA)');
axis image;
axis([-1 3 -1 3]);
grid on;

% Figura 16

figure(16);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-4 8 -2 6]);
grid on;

subplot(1, 2, 2);
plot(w4);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-4000 4000 -2000 6000]);
grid on;

% Figura 17

figure(17);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-4 8 -2 6]);
grid on;

subplot(1, 2, 2);
plot(w5);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-2 2 -4 2]);
grid on;

% Figura 18

figure(18);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([-4 8 -2 6]);
grid on;

subplot(1, 2, 2);
plot(w6);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-20 140 -20 100]);
grid on;