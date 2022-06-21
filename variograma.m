function variograma = cria_variograma(X,Y,Facies,indicadores, distancias)

    % Amplitude (range,a). ver https://pt.wikipedia.org/wiki/Variograma
    a = max(max(distancias)); 
    
    % Efeito pepita
    C0 = 0;
    
    % Sill/Patamar C = C0 + C1
    C1 = 1;
    C = C0 + C1;
    
    % Modelo esférico
    V = zeros(size(distancias));
    h = distancias;
    for i = 1 : length(distancias)
        for j = 1 : length(distancias) 
            if h(i,j) <= a
                V(i,j) = C0 + C1*(1.5*h(i,j)/a -0.5*(h(i,j)/a)^3);
            elseif h == 0
                V(i,j) = 0;
            else
                V(i,j) = C;
            end
        end
    end
    variograma = V;
end