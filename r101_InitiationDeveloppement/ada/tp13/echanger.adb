  procedure Echanger (X, Y : in out Float) is
      Aux : constant Float := X;
   begin
      X := Y;
      Y := Aux;
   end Echanger;
