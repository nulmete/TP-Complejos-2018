%% Alumnos

% Ulmete, Nicolás
% Pérez Leonardi, Mariángeles

%% Reset

clear;
clc;

%% Ejercicio e

% Parábola y = x^2 en el intervalo [1, 2]
x1Values = linspace(1, 2, 1001);
y1Values = x1Values.^2;

% Armo una matriz M con los pares de coordenadas de la parábola 1
% Columna 1 = valores de x
% Columna 2 = valores de y
M1(:, 1) = x1Values;
M1(:, 2) = y1Values;

xParabola1 = min(M1(:,1)) : 0.004 : max(M1(:,1));
yParabola1 = interp1(M1(:,1), M1(:,2), xParabola1);

% Parábola y = (x^2)/2 en el intervalo [sqrt(2), 2*sqrt(2)]
x2Values = linspace(sqrt(2), 2*sqrt(2), 1001);
y2Values = (x2Values.^2)./2;

% Armo una matriz M con los pares de coordenadas de la parábola 2
% Columna 1 = valores de x
% Columna 2 = valores de y
M2(:, 1) = x2Values;
M2(:, 2) = y2Values;

xParabola2 = min(M2(:,1)) : 0.004 : max(M2(:,1));
yParabola2 = interp1(M2(:,1), M2(:,2), xParabola2);

x = [xParabola1, max(xParabola2), flip(xParabola2), min(xParabola1)];
y = [yParabola1, max(yParabola2), flip(yParabola2), min(yParabola1)];

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

% Figura 37

figure(37);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 4 0 6]);
grid on;

subplot(1, 2, 2);
plot(w1);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-20 10 -5 35]);
grid on;

% Figura 38

figure(38);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 4 0 6]);
grid on;

subplot(1, 2, 2);
plot(w2);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-1000 1000 -500 500]);
grid on;

% Figura 39

figure(39);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 4 0 6]);
grid on;

subplot(1, 2, 2);
plot(w3);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([0 2.4 0 2]);
grid on;

% Figura 40

figure(40);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 4 0 6]);
grid on;

subplot(1, 2, 2);
plot(w4);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-2000 1000 -2000 1000]);
grid on;

% Figura 41

figure(41);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 4 0 6]);
grid on;

subplot(1, 2, 2);
plot(w5);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-0.1 0.2 -0.2 0.1]);
grid on;

% Figura 42

figure(42);
hold on;

subplot(1, 2, 1);
plot(z);
title('Función original');
axis image;
axis([0 4 0 6]);
grid on;

subplot(1, 2, 2);
plot(w6);
title('Función transformada (NO ANALÍTICA)');
axis image;
axis([-20 60 -20 120]);
grid on;