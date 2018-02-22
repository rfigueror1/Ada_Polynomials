package polinomial is

   type coefficient is array (1..20) of Integer;
  
   type Polynomial is record
      degree: Integer;
      coef: coefficient;
   end record;
  
   function set_Polynomial(a: in Integer; n: in Integer) return coefficient;
   function set_degree(coef: in coefficient) return Integer;
   function plus(p : in polinomial.Polynomial; q : in polinomial.Polynomial) 
                 return polinomial.coefficient;
   function minus(p : in polinomial.Polynomial; q : in polinomial.Polynomial) 
                  return polinomial.coefficient;
   function times(p : in polinomial.Polynomial; q : in polinomial.Polynomial) 
                  return polinomial.coefficient;
   function compose(p : in polinomial.Polynomial; q : in polinomial.Polynomial) 
                    return polinomial.coefficient;
   function evaluate(p  : in polinomial.Polynomial; x : in Integer) return Integer;
   function differentiate(p : in polinomial.Polynomial) return polinomial.coefficient;
   procedure print_coeff(coef: in coefficient; d : in Integer);
end polinomial;
