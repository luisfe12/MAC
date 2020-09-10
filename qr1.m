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
## @deftypefn {} {@var{retval} =} qr1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Luis  <luis@luis>
## Created: 2019-11-21

function [Q R] = qr1 (A)
  [m n] = size(A)
  r1  = zeros(m,n)
  v1 = A
  q1 = zeros(n,n)
  for i = 1: n
    r1(i,i) = norm (v1(:,i))
    q1(:,i) = v1(:,i)/r1(i,i)
    
    for j = i+1:n
      r1(i,j) = (q1(:,i)')*v1(:,j)
      v1(:,j)=v1(:,j) - r1(i,j)*q1(:,i)
   endfor
 endfor
 Q = q1
 R = r1
endfunction
