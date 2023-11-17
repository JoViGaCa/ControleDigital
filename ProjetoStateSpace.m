A = [-1 3; -2 -3];
B = [0; 5];
C = [1  0];
D = 0;
k1 = sym('k1')
k2 = sym('k2')
h1 = sym('h1')

K = [k1 k2]
H = [h1]

P = [(A-B*K) B*H; -C 0]

% define as equações
autoval = eig(P)

%iguala elas a um valor definido
autoval = [autoval(1)==-5;autoval(2)==-7;autoval(3)==-9]

%resolve
kras = solve(autoval(1),autoval(2),autoval(3))

%transforma para double
kras = [double(kras.k1(1)) double(kras.k2(1)) double(kras.h1(1))]