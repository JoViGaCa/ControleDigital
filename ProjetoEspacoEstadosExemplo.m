%% Projeto Controlador em Espaço de Estados
% Sistema Massa Mola
K = 30;
b = 25;
M = 5;

A = [0 1; -K/M -b/M]
B = [0; 1/M]
C = [1 0]
D = 0

sys = ss(A,B,C,D)
step(sys)
%% Projeto por Regulação
polosreg = [-5 -7]
Kreg = place(A,B,polosreg)

%% Projeto de COntrolador de Rastreio
H = sym('H')
K1 = sym('K1')
K2 = sym('K2')
Kg = [K1, K2]
C = [1 0]

An = [(A-B*Kg) B*H; -C 0]
autoval = eig(An)
autoval = [autoval(1)==-9;autoval(2)==-10; autoval(3)==-11]
Kras = solve(autoval(1),autoval(2),autoval(3))
h = double(Kras.H(1))
k1 = double(Kras.K1(1))
k2 = double(Kras.K2(1))

