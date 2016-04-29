function first208April
    axis([-1, 1, -2, 2]);
    y0 = dsolve('(1-x^2)*D2y - 2 *x * Dy + 0*(0+1)*y = 0', 'y(-1)=(-1)^0', 'y(1)=1', 'x') 
    y1 =  dsolve('(1-x^2)*D2y - 2 *x * Dy + 1*(1+1)*y = 0', 'y(-1)=(-1)^1', 'y(1)=1' , 'x') 
    y2 = dsolve('(1-x^2)*D2y - 2 *x * Dy + 2*(2+1)*y = 0', 'y(-1)=(-1)^2', 'y(1)=1', 'x') 
    x = -1:0.1:1;
    hold on;
    plot(x, eval(y0) * ones(length(x)), x, eval(y1), x, eval(y2))
end