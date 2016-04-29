function Bessel
    y = dsolve('x^2 * D2y + x * Dy + (x^2 - n^2) * y = 0', 'x')
    x = -1: 0.1 : 1;
    plot(x, eval(y))
end