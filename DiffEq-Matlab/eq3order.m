function eq3order
    clc
    y = simplify(dsolve('D3y = 2*(D2y -1)*cot(x)', 'y(pi/2)=1','Dy(pi/2)=0','D2y(pi/2)= 1', 'x' ))
    axis([-6, 6, -1, 26]);
    hold on;
    x = -5:0.01:5;
    plot(x, eval(y))
    [m, xm] = min(eval(y))
    [M, xM] = max(eval(y))
    plot(x(xm), m, 'go', x(xM), M, 'm*')
end