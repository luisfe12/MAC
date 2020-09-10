traing=[1 0 0 0;-2 -2 0 0;-3 8 3 0;4 6 5 4];
result=[1;2;3;4];


function trianinfe(traing,result)
  [fi co]=size(traing);
  if (fi != co)
    disp("No es una matriz cuadrada");
  endif
  x = zeros(rows(result),columns(result));
  x(1)=result(1)/traing(1,1);
  for i=2 : co
    S=result(i);
    for j=1 : i-1
      S=S - traing(i,j)*x(j);
    endfor
      x(i)=S/traing(i,i);
  endfor
  disp(x);
endfunction

function ffor(a);
  for i=1:a;
    disp(i);
  endfor
endfunction
