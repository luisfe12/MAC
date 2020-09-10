## Copyright (C) 2020 Luis 
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
## @deftypefn {} {@var{retval} =} rk4to (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Luis  <luis@luis>
## Created: 2020-06-30

function  rk4to (input1, input2, h1)
  h = h1;
  x=input1;
  y=input2;
  ecuacion = 4*e^(0.8*x) - 0.5*y;
  auxiliarx = 0;
  auxiliary = 0;
  k1=0;
  k2=0;
  k3=0;
  k4=0;
  i = 0;
  while x <= 0.5
    auxiliarx = x
    auxiliary = y
    k1 = 4*e^(0.8*x) - 0.5*y;
    val1k2 = x+(h/2);
    val2k2 = y +k1*h/2;
    k2 = 4*e^(0.8*val1k2) - 0.5*val2k2;
    val1k3 = x+(h/2);
    val2k3 = y +k2*h/2;
    k3 = 4*e^(0.8*val1k3) - 0.5*val2k3;
    val1k4 = x+h;
    val2k4 = y+k3*h;
    k4 = 4*e^(0.8*val1k4) - 0.5*val2k4;
    x = x+h;
    y;
    y = y + (h/6)*(k1+2*k2+2*k3+k4);
    
   end
   
  
endfunction
