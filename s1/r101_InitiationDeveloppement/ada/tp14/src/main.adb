with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;

with TAD_rational;     use TAD_rational;


procedure Main is
   r1, r2: rational;

   begin
      r1:= unRationnel (3, 6);
      r2:= unRationnel (34, 36);
      r1:= r1 + r2;
      r2:= r1 * r2;

      put_line("r1" & Integer'Image(numerateur(r1)) & Integer'Image(denominateur(r1) ) );
      put_line("r2" & Integer'Image(numerateur(r2)) & Integer'Image(denominateur(r2) ) );
   end Main;
