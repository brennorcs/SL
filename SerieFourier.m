clc
clear
%Defino ate qual n somatoria varia
n=50;
intervalo = 0:0.01:12;
indice = 1;
T = 4;
w = 2*pi/T;

for t = intervalo
    valor = 0.0;
    for k = 0:n
        if (k ~= 0.0)
            valor = valor + ((4*1i*k*w - exp(4*1i*k*w) + 1)*exp(1i*k*t*w - 4*1i*k*w))/(4*pi*(k^2)*(w^2));
        else
            valor = valor + (2/(pi));
        end
    end
    res(indice) = valor;
    indice = indice + 1;
end


plot (intervalo, res);