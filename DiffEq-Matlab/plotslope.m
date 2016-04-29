function plotslop
    function z = ff(x, y)
        z = x / y;
    end
    clc
    axis([-6,6,-6,6])
    hold on

%    x = [];
    x = -5:1:5;
    y = -5:1:5;
    delta = 0.4;
     for k = 1:length(x)
        for m = 1:length(y)
            plot(x(k), y(m),'m.')
            eps =  delta / sqrt(1 + ff(x(k), y(m)).^2);
            plot([x(k) - eps, x(k) + eps], [y(m) - eps * ff(x(k), y(m)), y(m) + eps * ff(x(k), y(m))], 'm')
        end
    end
   [x0, y0] = ginput(1);

    plot(x0, y0, 'g.')
    %y = dsolve('Dy = y', 'y(x0) = y0', 'x');
    %x = -6: 0.1: 6;
    [X, Y] = ode45(@ff, [x0, x0 + 6], y0)
    [X1, Y1] = ode45(@ff, [x0, x0 - 6], y0)
    plot(X, Y, X1, Y1, 'b') 
    %plot(x, eval(y))
end