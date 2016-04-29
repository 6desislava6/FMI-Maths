function slopelogistik
    function z = ff(x, y)
        eps0 = 0.2;
        z = eps0 * y * (1 - y);
    end
    clc
    axis([0,15,-0.1,1.1])
    hold on
    eps0 = 0.2;
%    x = [];
    x = 0:0.4:15;
    y = 0:0.1:1;
    delta = 0.2;
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
    y = dsolve('Dy = 2*y*(1-y)','y(x0) = y0', 'x')
    simplify(y)
    %plot(x, eval(y))
end