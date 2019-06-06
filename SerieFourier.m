clc
clear
%Defino ate qual n somatoria varia
n=2;
intervalo = 0:0.01:4*pi;
indice = 1;
T = 2*pi;
w = 2*pi/T;

for t = intervalo
    valor = 0.0;
    for k = 0:n
        if (k ~= 1.0)
            valor = valor + (((1 - exp(-2*1i*pi*k*w))*exp(1i*k*t*w))/(2*pi*(1 - (k^2)*(w^2))));
        else
            valor = valor + (((-1)*1i*exp(1i*t))/(2));
        end
    end
    res(indice) = valor;
    indice = indice + 1;
end

seno = sin(intervalo);

plot (intervalo, res);
plot (intervalo,seno);