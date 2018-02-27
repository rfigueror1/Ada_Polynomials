with Ada.Integer_Text_IO;
use Ada.integer_Text_IO;

package body exception_show is
   procedure show is
      X, Y : Integer := 0;
      Z : Integer;
      begin
           -- distintct line:
      if X /= 0 and then Y/X > 0 then
      --if X /= 0 and Y/X > 0 then
         Z := 1;
      else
         Z := 0;
      end if;
      Put(Z);
   end show;
end exception_show;
