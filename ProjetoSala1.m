%% Projetar um controlador motor corrente contínua

tau = 100;
km = 30;

% sistema de posição em malha aberta
sysposma = tf(1,[tau km 0]);

% sistema de velocidade em malha aberta
sysvelma = tf(1,[tau km]);

% sistema posição digital malha aberta
sysdigposma = c2d(sysposma,0.01);

% sistema velocidade digital malha aberta
sysdigvelma = c2d(sysvelma,0.01);

%% Alocação de polos
% PO% < 15%
% Te < 2s
% Ts < 1s

% rltools



