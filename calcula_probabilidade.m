function nova_facies = calcula_probabilidade(lambdas, indicadores)
    
    probabilidade = zeros(1,size(indicadores,2));
    for i = 1 : size(indicadores,2)
        probabilidade(i) = sum(indicadores(:,i).*lambdas) + (1-sum(lambdas))*0.5;
    end
    
    [~,posicao] = max(probabilidade);
    nova_facies = posicao;
    
end
    
   