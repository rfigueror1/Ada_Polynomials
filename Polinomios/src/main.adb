with polinomial;
with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Main is
   p, q, r: polinomial.Polynomial;
   pa, pn, qa, qn, res: Integer;



begin
   -- Defino dos polinomios para poder sumarlos, p y q
   pa:= 4;
   pn:= 1;
   -- p.coef:= polinomial.set_Polynomial(pa,pn);
   p.coef(1..2):= (2,3);
   p.coef(3..20) := (others => 0);
   p.degree := polinomial.set_degree(p.coef);


   qa:= 3;
   qn:= 2;
   --q.coef := polinomial.set_Polynomial(qa,qn);
   q.coef(1..3):= (-2,5,3);
   q.coef(4..20) := (others => 0);
   q.degree := polinomial.set_degree(q.coef);

   polinomial.print_coeff(p.coef, p.degree); -- Imprime vector de coeffs
   polinomial.print_coeff(q.coef, q.degree);

   -- Los SUMO
   r.coef := polinomial.plus(p, q);
   r.degree := polinomial.set_degree(r.coef);
   polinomial.print_coeff(r.coef, r.degree);

   -- Los RESTO
   r.coef := polinomial.minus(p, q);
   r.degree := polinomial.set_degree(r.coef);
   polinomial.print_coeff(r.coef, r.degree);

   -- Los MULTIPLICO
   r.coef := polinomial.times(p, q);
   r.degree := polinomial.set_degree(r.coef);
   polinomial.print_coeff(r.coef, r.degree);

   -- Saco la composicion q de p
   r.coef := polinomial.compose(p, q);
   r.degree := polinomial.set_degree(r.coef);
   polinomial.print_coeff(r.coef, r.degree);

   -- Evaluo p en 8
   res := polinomial.evaluate(p, 8);
   put(res);
   new_line(1);

   -- Derivada de q
   r.coef := polinomial.differentiate(q);
   r.degree := polinomial.set_degree(r.coef);
   polinomial.print_coeff(r.coef, r.degree);

end Main;
