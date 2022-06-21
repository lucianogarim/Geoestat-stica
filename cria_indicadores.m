function indicadoras = cria_indicadores(Facies)
    
    num_facies = max(unique(Facies));
    indicadoras = zeros(length(Facies), num_facies);
    
    for i = 1 : length(Facies)
        pos = Facies(i);
        indicadoras(i,pos) = 1;
    end

end





    

