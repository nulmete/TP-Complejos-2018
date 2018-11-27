%% Alumnos

% Ulmete, Nicol�s
% P�rez Leonardi, Mari�ngeles

%% Reset

clear;
clc;

%% Creaci�n de la matriz

A = 1:20;

for i = 2:20
   A(i,:) = A(1,:).^i;
end

%% C�lculos

determinante = det(A);
fprintf('DETERMINANTE: %e\n', determinante);

inversa = inv(A);
disp('================================================ INVERSA ================================================');
disp(inversa);

cuadrado = A^2;
disp('================================================ CUADRADO ================================================');
disp(cuadrado);