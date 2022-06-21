function distancia = calcula_distancia (X,Y)
    
    distancia = zeros(length(X), length(Y));
    
    for i = 1 : length(X)
        for j = 1 : length(Y)
            distancia(i,j) = sqrt((X(i)-X(j))^2+(Y(i)-Y(j))^2);
        end
    end
    
end