with Ada.Text_IO;
use Ada.Text_IO;

package body polinomial is

   function set_Polynomial(a: in Integer; b: in Integer) return coefficient is
      x : coefficient := (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
      begin
      x(b) := a;
      return x;
   end set_Polynomial;

   function set_degree(coef: in coefficient) return Integer is
      d: Integer:= 0;
   begin
      for I in 1..20
      loop
         if coef(I)/=0 then
            d := I;
         end if;
         end loop;
      return d;
   end set_degree;

 end polinomial;
