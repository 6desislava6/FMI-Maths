function odeintc2
    clc;
    axis([-4, 4, -10, 10]);
    hold on;
    [x0, y0] = ginput(1);
    plot(x0, y0, 'm*');
    function z = rhs(x, y)
        z = y;
    end
    [x, y] = ode45(@rhs, [x0, 4], y0);
    [x1, y1] = ode45(@rhs, [x0, -4], y0);
    plot(x,y,x1,y1, 'b');
end