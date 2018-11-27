%% Alumnos

% Ulmete, Nicolás
% Pérez Leonardi, Mariángeles

%% Reset

clear;
clc;

%% Ejercicio 1

% Carga de todos los números complejos "x" e "y" en vectores separados
x = [3 + 5i, 4, (sqrt(2)/2)*(1 + 1i), 3 + 5i, 4*exp(1i*(5*pi/4)), 4*exp(-1i)];
y = [1i, 1+pi*1i, -2+1i, 2+3i, exp(5-2i), -2+5i];

% Operaciones
operaciones = [x(1) + y(1), 2*x(2) * y(2), abs(x(3)) / conj(y(3)), ...
    (x(4) + y(4)) / (x(4)^2 - y(4)), y(5) / (x(5) * (y(5) - x(5))), log(x(6)) / ((x(6) - 2) * (y(6) + 2))];

for p = 1:6
    z = operaciones(p);
    figure(p);
    hold on;
    compass(x(p), 'r');
    compass(y(p), 'g');
    compass(z, 'b');
    title(['Figura' ' ' num2str(p)]);
    legend('x', 'y', 'z');
    grid on;
end
