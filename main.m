%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Elaborado por Luciano Garim  %%
%  Data: 21/06/2022             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc

% Definindo um conjunto de amostras artificiais
X = [ 10 0  40];
Y = [ 24 0  0];
Facies = [1 1 2];
I_u = [10 0]; % Vamos krigar esse ponto

X = [X I_u(1)];
Y = [Y I_u(2)];

% Cria indicadores a partir do rótulo das fácies
indicadores = cria_indicadores(Facies);

% Calcula a distância entre os vetores X e Y
distancias = calcula_distancia(X,Y);

% Calcula a semivariância e covariância
[covariancia, semivariancia] = cria_variograma(distancias);

% Resolve o sistema linear para determinar os lambdas
lambdas = sistema_linear(covariancia);

% Atribui a nova fácies a amostra I_u
nova_facies = calcula_probabilidade(lambdas, indicadores);
    
