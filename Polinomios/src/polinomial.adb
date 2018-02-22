with Ada.Text_IO;
use Ada.Text_IO;

package body polinomial is

   function set_Polynomial(a: in Integer; b: in Integer) return coefficient is
      x : coefficient;
      begin
      x(b) := a;
    --deg : degree();
      return x;
   end set_Polynomial;

 end polinomial;
