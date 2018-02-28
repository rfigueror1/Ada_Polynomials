with Ada.Text_IO, Ada. Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body hello_world is
	procedure Hello is
	begin
	  Ada.Text_IO.Put_Line("Hello, world!");
	  Put_Line("Hello, world!");
	end Hello;

	procedure Compute is
	  procedure Double(Item : in out Integer) is
	  begin
	    Item := Item * 2;
	  end Double;
	  X : Integer := 1;
	begin
	  loop
	    Put(X);
	    New_Line;
	    Double(X);
	  end loop;
	end Compute;

	procedure Print_Squares is
		X :Integer;
	begin
		Put_Line("Enter numbers");
		loop
			Get(X);
		exit when X=0;
			Put(X * X);
			New_Line;
		end loop;
	end Print_Squares;

	procedure Loop_While is
		N: Integer := 1;
	begin
		while N < 20
		loop
			Put(N);
			N := N + 1;
		end loop;
	end Loop_While;

end hello_world;





