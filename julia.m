function M = julia(zMax, c, N)
    realPart = linspace(-zMax,zMax,500);
    imaginaryPart = linspace(-zMax*1i,zMax*1i,500);
    [X, Y] = meshgrid(realPart,imaginaryPart); 
    Z = X' + Y';
    M = [];
    for k = 1:500
        for j = 1:500
           M(k,j) = escapeVelocity(Z(j,k), c, N);
        end
    end
end