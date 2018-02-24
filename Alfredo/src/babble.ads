with Ada.Strings. Unbounded; use Ada.Strings.Unbounded;
package Babble is
   task type Babbler is
      entry Start(Message : in Unbounded_String; Count :  in Natural);
   end Babbler;
end Babble;
