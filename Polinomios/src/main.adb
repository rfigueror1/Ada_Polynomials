with polinomial;
with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Main is
   p1, p2, p3, p4, p, q1, q2, q, z, r: polinomial.Polynomial;
   res: Integer;



begin
   -- Defino dos polinomios para poder sumarlos, p y q
   p1.coef:= polinomial.set_Polynomial(4,3);
   p1.degree := polinomial.set_degree(p1.coef);
   p2.coef:= polinomial.set_Polynomial(3,2);
   p2.degree := polinomial.set_degree(p2.coef);
   p3.coef:= polinomial.set_Polynomial(1,0);
   p3.degree := polinomial.set_degree(p3.coef);
   p4.coef:= polinomial.set_Polynomial(2,1);
   p4.degree := polinomial.set_degree(p4.coef);
   p.coef := polinomial.plus(p1,p2);
   p.degree := polinomial.set_degree(p.coef);
   p.coef := polinomial.plus(p,p3);
   p.degree := polinomial.set_degree(p.coef);
   p.coef := polinomial.plus(p,p4);
   p.degree := polinomial.set_degree(p.coef);

   --q.coef := polinomial.set_Polynomial(qa,qn);
   q1.coef:= polinomial.set_Polynomial(3,2);
   q1.degree := polinomial.set_degree(q1.coef);
   q2.coef:= polinomial.set_Polynomial(5,0);
   q2.degree := polinomial.set_degree(q2.coef);
   q.coef := polinomial.plus(q1,q2);
   q.degree := polinomial.set_degree(q.coef);

   --q.coef := polinomial.set_Polynomial(qa,qn);
   z.coef(1..20) :=(others => 0);
   z.degree := polinomial.set_degree(z.coef);

   Put("zero(x) =");
   polinomial.print_coeff(z.coef, z.degree);
   Put("p(x) =");
   polinomial.print_coeff(p.coef, p.degree);
   Put("q(x) =");
   polinomial.print_coeff(q.coef, q.degree);

   -- Los sumo
   r.coef := polinomial.plus(p, q);
   r.degree := polinomial.set_degree(r.coef);
   Put("p(x) + q(x) =");
   polinomial.print_coeff(r.coef, r.degree);

   -- Los multiplico
   r.coef := polinomial.times(p, q);
   r.degree := polinomial.set_degree(r.coef);
   Put("p(x) * q(x) =");
   polinomial.print_coeff(r.coef, r.degree);

   -- Saco la composicion q de p
   r.coef := polinomial.compose(p, q);
   r.degree := polinomial.set_degree(r.coef);
   Put("p(q(x)) =");
   polinomial.print_coeff(r.coef, r.degree);

   -- Resta de polinomio cero
   r.coef := polinomial.minus(z, p);
   r.degree := polinomial.set_degree(r.coef);
   Put("0 - p(x) = ");
   polinomial.print_coeff(r.coef, r.degree);


   -- Evaluo p en 3
   res := polinomial.evaluate(p, 3);
   Put("p(3) =" &  Integer'Image(res));
   New_Line;

   -- Derivada de q
   r.coef := polinomial.differentiate(p);
   r.degree := polinomial.set_degree(r.coef);
   Put("p'(x) =");
   polinomial.print_coeff(r.coef, r.degree);

   --Doble derivada
   r.coef := polinomial.differentiate(r);
   r.degree := polinomial.set_degree(r.coef);
   Put("p''(x) =");
   polinomial.print_coeff(r.coef, r.degree);
end Main;
