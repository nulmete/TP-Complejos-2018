%% Alumnos

% Ulmete, Nicolás
% Pérez Leonardi, Mariángeles

%% Reset

clear;
clc;

%% Ejercicio d

% Triángulo con los siguientes vertices:
% a = 2 + 3i
% b = 3 + 6i
% c = 4.5 + 4.5i

% Valores de x
x1 = 2;
x2 = 3;
x3 = 4.5;

% Valores de y
y1 = 3;
y2 = 6;
y3 = 4.5;

% Armo vectores con los valores de "x" e "y" del triángulo
x = [x1 x2 x3 x1];
y = [y1 y2 y3 y1];

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

% Figura 25

figure(25);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 8]);
grid on;

subplot(1, 2, 2);
plot(w1);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-30 10 0 50]);
grid on;

% Figura 26

figure(26);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 8]);
grid on;

subplot(1, 2, 2);
plot(w2);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([0 6 0 8]);
grid on;

% Figura 27

figure(27);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 8]);
grid on;

subplot(1, 2, 2);
plot(w3);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([0 3 0 2]);
grid on;

% Figura 28

figure(28);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 8]);
grid on;

subplot(1, 2, 2);
plot(w4);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-6000 0 -7000 1000]);
grid on;

% Figura 29

figure(29);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 8]);
grid on;

subplot(1, 2, 2);
plot(w5);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-0.02 0 -0.04 0]);
grid on;

% Figura 30

figure(30);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 6 0 8]);
grid on;

subplot(1, 2, 2);
plot(w6);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([0 80 0 300]);
grid on;