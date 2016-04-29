function hoscilator
    clc;
    % clf;
    tmax = 30;
    % резонанс!
    y = simplify(dsolve('D2y + 0 * Dy + 16 * y =  3 * sin(4 * t)', 'y(0)=1', 'Dy(0)=1'))
    t = 0 : tmax / 1000 : tmax;
    Y = eval(y)
    DY = eval(diff(y))
    for k = 1 : length(t)
        subplot(4, 2, [1, 2])
        % plot(t, Y)
        plot(t(1:k), Y(1:k))
        axis([0, tmax, -2.5, 2.5])
        title('y(t)')
        subplot(4, 2, [3, 4])
        plot(t(1:k), DY(1:k))
        axis([0, tmax, -8, 8])
        title('dy/dx')
        subplot(4, 2, [5, 6, 7, 8])
        plot(Y(1:k), DY(1:k))
        axis([-8, 8, -8, 8])
        M(k) = getframe;
    end
end
