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
## @deftypefn {} {@var{retval} =} simetrica (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Luis  <luis@luis>
## Created: 2019-10-17

function  retval = simetrica (input1)
  [n r] = size (input1)
  res = input1;
  if r != n
    disp("no se puede hacer ya que no es cuadrada")
  endif

  for j=1:1:r
    for i=1:1:n
      res(i,j) = input1(j,i)
     endfor 
   endfor
  comprobacion(input1, res)
retval = res
endfunction
