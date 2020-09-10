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
## @deftypefn {} {@var{retval} =} qr (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Luis  <luis@luis>
## Created: 2019-11-21

function [Q,R] = qr (A)
  
  [m,n]=size(A);
  R=A; 
  Q=eye(m)
  for k=1:m-1
    x=zeros(m,1)
    x(k:m,1)=R(k:m,k)
    g=norm(x)
    v=x; v(k)=x(k)+g
    s=norm(v)
    if s~=0, w=v/s; u=R'*w
      R=R-w*u'
      Q=Q-Q*w*w' 
      
    end
  end
  Q
  R
endfunction














