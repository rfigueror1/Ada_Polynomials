package polinomial is

   type coefficient is array (1..20) of Integer;
   
   function set_Polynomial(a: in Integer; b: in Integer) return coefficient;
   function set_degree(coef: in coefficient) return Integer;
    
   type Polynomial is record
      degree: Integer;
      coef: coefficient;
   end record;
      
end polinomial;
