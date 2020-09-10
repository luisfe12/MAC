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
## @deftypefn {} {@var{retval} =} inversa (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Luis  <luis@luis>
## Created: 2019-10-24

%function [retval] = inversa (input1, input2)
function b = inversa(a)
	[r,c] = size(a);
	if r != c
	    disp('solo cuadradas')
	    b = [];
	    return
	end

	b = eye(r)
	
	for j = 1 : r
	    for i = j : r
		    if a(i,j) ~= 0
          for k = 1 : r
              s = a(j,k); a(j,k) = a(i,k); a(i,k) = s;
              s = b(j,k); b(j,k) = b(i,k); b(i,k) = s;
          end
          t = 1/a(j,j);
          for k = 1 : r
              a(j,k) = t * a(j,k);
              b(j,k) = t * b(j,k);
          end
          for L = 1 : r
              if L ~= j
                  t = -a(L,j);
                  for k = 1 : r
                      a(L,k) = a(L,k) + t * a(j,k);
                      b(L,k) = b(L,k) + t * b(j,k);
                  end
              end
          end            
      end
		break
	end
end

if a(i,j) == 0
        disp('Warning: Singular Matrix')
        b = 'error';
        return
end


endfunction
