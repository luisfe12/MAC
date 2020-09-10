function heuned(valor1, valor2, h1)
  h = h1;
  x = valor1;
  y = valor2;
  ecuacion = 4*e^(0.8*x) - 0.5*y;
  dxdy = 0;
  deltay = 0;
  dydxuno = 0;
  promedio = 0;
  corregido = 0;
  auxiliarx = 0;
  yheun = 0;
  i = 0;
  error =0;
  while x <= 4 && i<=4
    #el auxiliarx es el valor de x 
    auxiliarx = x
    yheun = y
    dxdy = 4*e^(0.8*x) - 0.5*y;
    deltay = dxdy*h;
    x = x+h;
    y = y + deltay;
    ecuacion = 4*e^(0.8*x) - 0.5*y;
    dxdyuno = ecuacion;
    promedio = (dxdy+dxdyuno)/2;
    corregido = promedio*h;
    x = auxiliarx+h;
    y =  yheun+corregido;
    Yverdadero = 4/1.3 *(exp(0.8*i)-exp(-0.5*i))+2*exp(-i/2);
    Yverdadero
    i = i+1;
    error = abs((yheun-Yverdadero)*100/Yverdadero)
    
  end
  
  
  
  endfunction