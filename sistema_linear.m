function lambdas = sistema_linear(covariancia)
    
    A = covariancia(1:3,1:3);
    B = covariancia(1:3,end);
    lambdas = linsolve(A,B);
    
end