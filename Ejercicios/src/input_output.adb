with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded, Text_IO, Ustrings;
use Ada.Strings.Unbounded, Text_IO, Ustrings;

package body input_output is

   procedure Make_Hi is
    New_File : File_Type;
   begin
      Create(New_File, Ada.Text_IO.Append_File, "Hi");
      -- parameters, Mode can be \textit{Out_File} for output, In_File
      -- for input file.
        Put_Line(New_File, "Hi, this is a test!");
        Close(New_File);
   end Make_Hi;

   procedure Open_Hi is
    New_File : File_Type;
   begin
      Open(New_File, Ada.Text_IO.Append_File, "Hi");
      -- parameters, Mode can be \textit{Out_File} for output, In_File
      -- for input file.
      Put_Line(New_File, "This is another test");
      Close(New_File);
   end Open_Hi;



  end input_output;
