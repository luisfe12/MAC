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
## @deftypefn {} {@var{retval} =} multi (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Luis  <luis@luis>
## Created: 2019-09-12

function retval = multi (input1, input2)
  
  matriz3=zeros(rows(input1),columns(input2));
  %disp(matriz3);
  for i=1:1:rows(input1);
    for j=1:1:columns(input2);
      matriz3(i,j) =0;
      for k=1:1: rows(input2);
        matriz3(i,j) = matriz3(i,j) + input1(i,k)*input2(k,j);
      endfor
    endfor
  endfor
  disp(matriz3);
endfunction
