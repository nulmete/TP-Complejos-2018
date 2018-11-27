%% Alumnos

% Ulmete, Nicolás
% Pérez Leonardi, Mariángeles

%% Reset

clear;
clc;

%% Ejercicio c

% Rectángulo con los siguientes vertices:
% a = 2 + 2i
% b = 2 + 4i
% c = 6 + 4i
% d = 6 + 2i

% Valores de x
x1 = 2;
x2 = 6;

% Valores de y
y1 = 2;
y2 = 4;

% Armo vectores con los valores de "x" e "y" del rectángulo
x = [x1 x1 x2 x2 x1];
y = [y1 y2 y2 y1 y1];

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

% Figura 19

figure(19);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 8 0 6]);
grid on;

subplot(1, 2, 2);
plot(w1);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-30 50 0 70]);
grid on;

% Figura 20

figure(20);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 8 0 6]);
grid on;

subplot(1, 2, 2);
plot(w2);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([0 6 0 10]);
grid on;

% Figura 21

figure(21);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 8 0 6]);
grid on;

subplot(1, 2, 2);
plot(w3);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([0 4 0 2]);
grid on;

% Figura 22

figure(22);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 8 0 6]);
grid on;

subplot(1, 2, 2);
plot(w4);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-8000 4000 -4000 8000]);
grid on;

% Figura 23

figure(23);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 8 0 6]);
grid on;

subplot(1, 2, 2);
plot(w5);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-30e-3 20e-3 -0.1 0.02]);
grid on;

% Figura 24

figure(24);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 8 0 6]);
grid on;

subplot(1, 2, 2);
plot(w6);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([0 120 0 80]);
grid on;