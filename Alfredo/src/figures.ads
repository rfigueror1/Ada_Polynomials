package Figures is
   -- Package to demonstrate Object Orientation.

type Point is
  record
      X, Y: Float ;
  end record;

 type Figure is tagged
   record
      Start : Point;
   end record;

 function Area (F: in Figure) return Float;
 function Perimeter (F : in Figure) return Float ;
-- procedure Draw (F : in Figure);

 type Circle is new Figure with
   record
      Radius: Float;
   end record;
 function Area (C: in Circle) return Float;
 function Perimeter (C: in Circle) return Float;
-- procedure Draw (C: in Circle);

 type Rectangle is new Figure with
    record
     Width: Float;
      Height: Float ;
   end record;
 function Area (R: in Rectangle) return Float;
 function Perimeter (R: in Rectangle) return Float;
-- procedure Draw (R: in Rectangle);

-- type Square is new Rectangle with null record;

procedure Print_Area(F : in Figure'Class);
procedure Print_Perimetro(F : in Figure'Class);

procedure Main_Figures;

end Figures;

