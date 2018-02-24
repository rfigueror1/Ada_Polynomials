with Ada.Text_IO; use Ada.Text_IO;
with Ada.Characters.Handling; use Ada.Characters.Handling;

package body string_type is

procedure string_example is
    Response : Character;
begin
    Put("Would you like me to say Hello?");
    Get(Response); -- Get first character
    if (To_Lower(Response) = 'y') then
        Put("Hello!");
    else
        Put("Ok, I won't");
    end if;
end string_example;
end string_type;
