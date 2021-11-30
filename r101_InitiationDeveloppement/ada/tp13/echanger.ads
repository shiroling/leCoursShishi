   -- échange les valeurs de 2 réels X et Y
   procedure Echanger (X, Y : in out Float) with
      Post => X = Y'Old and Y = X'Old;
