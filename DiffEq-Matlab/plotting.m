function plotting
    %function z = ff(x, y)
     %   z = x* y + x^3;
    %end
    axis([-6, 6, -6, 6]);
    hold on;
    a = [0,0,0,0,0];
    b = -2:2;
    for i = 1:5
        x0 = a(i);
        y0 = b(i);
        %[x0, y0] = ginput(1);    
        %[X, Y] = ode45(@ff, [x0, x0 + 6], y0)
        %[X1, Y1] = ode45(@ff, [x0, x0 - 6], y0)
        %plot(X, Y, X1, Y1, 'b')
        x = -6: 0.1: 6;
        y = dsolve('Dy = x* y + x^3','y(x0) = y0', 'x')
        plot(x, eval(y)); 
    end
end