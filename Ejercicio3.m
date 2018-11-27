%% Alumnos

% Ulmete, Nicolás
% Pérez Leonardi, Mariángeles

%% Reset

clear;
clc;

%% Creación de la matriz

A = 1:20;

for i = 2:20
   A(i,:) = A(1,:).^i;
end

%% Cálculos

determinante = det(A);
fprintf('DETERMINANTE: %e\n', determinante);

inversa = inv(A);
disp('================================================ INVERSA ================================================');
disp(inversa);

cuadrado = A^2;
disp('================================================ CUADRADO ================================================');
disp(cuadrado);