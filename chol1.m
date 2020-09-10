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
## @deftypefn {} {@var{retval} =} chol (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Luis  <luis@luis>
## Created: 2019-10-17

function A = chol (A)
  simetrica(A)
 n = length(A);
 for c=1:n
   A(c:n,c)=A(c:n,c)-A(c:n,1:c-1)*A(c,1:c-1)'
   A(c,c) = sqrt(A(c,c))
   A(c+1:n,c) = A(c+1:n,c)/A(c,c)
 endfor
 disp(A)
endfunction
