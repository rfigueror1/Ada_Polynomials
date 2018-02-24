with Ada.Float_Text_IO, Ada.Text_IO;
use Ada.Float_Text_IO, Ada.Text_IO;

package body Figures is

   procedure Print_Area(F : in Figure'Class) is
   begin
   Put("Area = ");
-- Call the correct area-computing routine for F and then
-- print its result .
   Put( Area(F) );
   New_Line;
   end Print_Area;

   procedure Print_Perimetro(F : in Figure'Class) is
   begin
   Put("Perimetro = ");
-- Call the correct area-computing routine for F and then
-- print its result .
   Put( Perimeter(F) );
   New_Line;
   end Print_Perimetro;


   function Area (F: in Figure) return Float is
   begin
      null;
      return 0.0;
   end Area;

   function Perimeter (F: in Figure) return Float is
   begin
      null;
      return 0.0;
   end Perimeter;

   function Area (C: in Circle) return Float is
      area : Float;
   begin
      area := 3.1416 * C.Radius * C.Radius;
      return area;
   end Area;

   function Perimeter (C: in Circle) return Float is
      perimeter : Float;
   begin
      perimeter := 2.0 * 3.1416 * C.Radius;
      return perimeter;
   end Perimeter;

   function Area (R: in Rectangle) return Float is
      area : Float;
   begin
      area := R.Width * R.Height;
      return area;
   end Area;

   function Perimeter (R: in Rectangle) return Float is
      perimeter : Float;
   begin
      perimeter := 2.0 * ( R.Width + R.Height);
      return perimeter;
   end Perimeter;

   procedure Main_Figures is
      rectangulito: Rectangle;
      circulito: Circle;
   begin
      circulito.Radius := 1.0;
      rectangulito.Width := 2.0;
      rectangulito.Height := 6.0;
      Put("Area de rectangulito: ");
      Print_Area(rectangulito);
      Put("Area de circulito: ");
      Print_Area(circulito);
      Put("Perimetro de rectangulito: ");
      Print_Perimetro(rectangulito);
      Put("Perimetro de circulito: ");
      Print_Perimetro(circulito);
   end Main_Figures;

end Figures;

