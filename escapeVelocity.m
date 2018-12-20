function n = escapeVelocity(z0, c, N)
    if(abs(z0)>2)
       n=0;
       return
    end
    for i = 1:N
        z1 = z0^2 + c;
        if(abs(z1)>2)
           n = i;
           return
        end
        z0 = z1;
    end
    n = N+1;
    return
end