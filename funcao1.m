den = [1 8 16];
num =[0 24];
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
bode(sys)
%w = 2pi
[u,t] = gensig('sin',1,5,0.01);
lsim(sys,u,t)
%w = 4pi
[u,t] = gensig('sin',0.5,2.5,0.01);
lsim(sys,u,t)

%w = 8pi
[u,t] = gensig('sin',0.25,2.5,0.01);
lsim(sys,u,t)

%w = 16pi
[u,t] = gensig('sin',0.125,2.5,0.01);
lsim(sys,u,t)

%w = 32pi
[u,t] = gensig('sin',0.0625,2.5,0.01);
lsim(sys,u,t)
