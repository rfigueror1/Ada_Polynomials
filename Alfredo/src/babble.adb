with Ustrings; use Ustrings;
package body Babble is
   task body Babbler is
      Babble : Unbounded_String;
      Maximum_Count : Natural;
   begin
   accept Start(Message : in Unbounded_String; Count : in Natural) do
         -- Copy the rendezvous data to local variables.
         Babble := Message;
         Maximum_Count := Count;
   end Start;
   for I in 1 .. Maximum_Count loop
      Put_Line(Babble);
      delay 1.0 ; -- Wait for one second.
   end loop;
-- We're done, exit task .
   end Babbler;
end Babble;
