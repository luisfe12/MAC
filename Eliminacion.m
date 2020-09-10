## Copyriñght (C) 2019 Luis 
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
## @deftypefn {} {@var{retval} =} Eliminacion (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Luis  <luis@luis>
## Created: 2019-09-19

function   Eliminacion (input1)
 [n r] = size(input1);
 if input1(1,1) == 0
     for j=1:r
        tm = input1(1,j)
        input1(1,j) = input1(n,j) 
        input1(n,j) = tm;
     endfor
 endif
 
 
 M=eye(n)
 for k=1:(n-1)
  for i=(k+1):n
    M(i,k) = input1(i,k)/input1(k,k)
    for j=(k+1):(n+1)
      input1(i,j)=-M(i,k)*input1(k,j)+input1(i,j)
    endfor
    input1(i,k) = 0
  endfor
 endfor 
 input1
endfunction
