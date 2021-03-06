## Copyright (C) 2019 Luis 
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} sistprog (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Luis  <luis@luis>
## Created: 2019-09-26

function  sistprog (traing,result)
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
