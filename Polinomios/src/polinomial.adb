with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.unbounded;
with Ada.Strings.Fixed;

package body polinomial is

   function set_Polynomial(a: in Integer; n: in Integer) return coefficient is
      x : coefficient := (others => 0);  -- Rellena de 20 ceros
      tam : Integer;
   begin
      tam := n + 1; -- El grado del polinomio + 1 da el numero de coeffcientes
      x(tam) := a;
      return x;
   end set_Polynomial;

   function plus(p  : in polinomial.Polynomial; q : in polinomial.Polynomial)
                 return polinomial.coefficient is
      r: polinomial.Polynomial;
      m : integer;
      begin
      r:= (0, (others => 0));
      if p.degree > q.degree then
         m := p.degree;
      else
         m := q.degree;
      end if;

      for i in 1 .. (m+1)
      loop
            r.coef(i) := p.coef(i) + q.coef(i);
      end loop;
      return r.coef;
   end plus;

   function minus(p  : in polinomial.Polynomial; q : in polinomial.Polynomial)
                 return polinomial.coefficient is
      r: polinomial.Polynomial;
      m : integer;
      begin
      r:= (0, (others => 0));
      if p.degree > q.degree then
         m := p.degree;
      else
         m := q.degree;
      end if;

      for i in 1 .. (m+1)
      loop
            r.coef(i) := p.coef(i) - q.coef(i);
      end loop;
      return r.coef;
   end minus;

   function times(p  : in polinomial.Polynomial; q : in polinomial.Polynomial)
                 return polinomial.coefficient is
      r: polinomial.Polynomial;
      m : integer;

      begin
      r:= (0, (others => 0));
      m := p.degree + q.degree;

      for i in 1 .. (p.degree+1)
      loop
         for j in 1 .. (q.degree+1)
         loop
         r.coef(i + j-1) :=  r.coef(i + j - 1) + p.coef(i)*q.coef(j);
         end loop;
      end loop;
      return r.coef;
   end times;

   function compose(p  : in polinomial.Polynomial; q : in polinomial.Polynomial)
                 return polinomial.coefficient is
      r, s, t: polinomial.Polynomial;

   begin
      r:= (0, (others => 0));

      for i in reverse 1 .. (p.degree+1)
      loop
         s.coef := polinomial.set_Polynomial(p.coef(i),0);
         s.degree := polinomial.set_degree(s.coef);
         t.coef := polinomial.times(r, q);
         t.degree := polinomial.set_degree(t.coef);
         r.coef := polinomial.plus(s, t);
         r.degree := polinomial.set_degree(r.coef);
      end loop;
      return r.coef;
   end compose;

   function evaluate(p  : in polinomial.Polynomial; x : in Integer) return Integer is
      res : Integer;
      begin
      res := 0;
      for i in reverse 1 .. (p.degree+1)
      loop
         res := p.coef(i) + x*res;
      end loop;
      return res;
   end evaluate;

   function differentiate(p  : in polinomial.Polynomial) return polinomial.coefficient is
      r : polinomial.Polynomial;
   begin
      r := (0, (others => 0));
      if p.degree /= 0 then
         for i in 1 .. p.degree
         loop
         r.coef(i) := i*p.coef(i+1);
         end loop;
      end if;

      return r.coef;
   end differentiate;

   function set_degree(coef: in coefficient) return Integer is
      d: Integer:= 0;
   begin
      for I in 1..20
      loop
         if coef(I)/=0 then
            d := I-1;
         end if;
      end loop;
      return d;
   end set_degree;

   procedure print_coeff(coef: in coefficient; d : in Integer) is
      use Ada.Strings.Fixed;

      result: Unbounded_String;
      Raw_Image: String := " 0";
      Trimmed_Image: String := "0";
   begin
      if d = 0 then
        append(result,  Integer'Image(coef(1)));
      else
         Raw_Image := Integer'Image(d);
         Trimmed_Image:= Trim(Raw_Image, Ada.Strings.Left);
         append(result, Integer'Image(coef(d+1)) & "x^" & Trimmed_Image);
         for Count in reverse 1 .. d
         loop
            if coef(Count) > 0 then
               append(result, " +" & Integer'Image(coef(Count)));
            elsif coef(Count) > 0  then
               append(result, " + ");
            else
              if coef(Count) < 0 then
                  append(result, " " & Integer'Image(coef(Count)));
              end if;
            end if;
            if coef(Count) /= 0 and Count > 1 then
               if coef(Count) = 1 then
                  append(result, "x");
               else
                  if Count /=2 then
                     Raw_Image := Integer'Image(Count-1);
                     Trimmed_Image:= Trim(Raw_Image, Ada.Strings.Left);
                     append(result, "x^" & Trimmed_Image);
                  else
                     append(result, "x");
                  end if;
               end if;
             end if;
         end loop;
      end if;
      Put_Line(To_String(result));
   end print_coeff;
 end polinomial;
