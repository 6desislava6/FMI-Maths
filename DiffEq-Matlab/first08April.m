function first
    syms y(t)
    clc;
    axis([-1, 1, -2, 2])
    for k=0:2 
        ysol(t) = dsolve('(1-x^2)*D2y - 2 *x * Dy + k*(k+1)*y = 0', 'y(-1)=(-1)^k', 'y(1)=1', 'x') 
        x = -1:0.1:1;
        hold on;
        plot(x, eval(sol(t)))
    end
end