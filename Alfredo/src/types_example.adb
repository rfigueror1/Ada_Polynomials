with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

package body types_example is

procedure print_types is
    A, B : Float := 0.0;
    I, J : Integer := 1;
begin
   A := B + 7.0;
   I := J * 3;
   B := Float(I) + A;
   Put_Line("A=" & Float'Image(A));
   Put_Line("B=" & Float'Image(B));
   Put_Line("I=" & Integer'Image(I));
   Put_Line("J=" & Integer'Image(J));
end print_types;
end types_example;
