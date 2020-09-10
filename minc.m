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
## @deftypefn {} {@var{retval} =} minc (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Luis  <luis@luis>
## Created: 2019-10-24

function z = minc (x,y,k)
  [r s] = size(x)
  for i =1:r
    A(i,1)= 1
   % A(i,2) = x(i)
   for j = 2:(k+1)
     A(i,j) = (x(i)^(j-1))
   endfor
  endfor
   A
   %z = inverse(transpose(A)*(A))*transpose(A)*y
   z = inversa(transpose(A)*(A))*transpose(A)*y
endfunction
