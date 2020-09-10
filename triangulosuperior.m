triang=[3 -2 -1 -1;0 4 -1 2;0 0 2 3;0 0 0 5];

result=[8;-3;11;15];


function triansup(triang,result)
  [fi co]=size(triang)
  x=zeros(rows(result),columns(result));
  if (fi != co)
    disp("No es una matriz cuadrada");
  endif
  x(co)=result(co)/triang(co,co);
  
  for i=(co-1):-1:1
    S=result(i);
    for j=(i+1):co
      S=S-triang(i,j)*x(j);
    endfor
    x(i)=S/triang(i,i);
  endfor
  disp(x);
endfunction
