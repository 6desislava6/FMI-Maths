function secondderivative
    y = dsolve('D3y = 2*(D2y -1)*cotg(x)', 'y(pi/2) = 1, y')

end
