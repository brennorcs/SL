den = [1 8 16];
num =[4 24];
%%definindo funcao de transferencia
sys = tf(num,den);
xlabel('Seg(s)');
ylabel('Amplitude');
%%criando gráfico da função de transferência a respota ao degrau unitario
step(sys);
%%definindo polos, ganho e zeros
[z,p,k]=tf2zp(num,den);
pzmap(sys);
[Wn,a] = damp(sys);