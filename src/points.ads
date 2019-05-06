package Points is
   type Point is record
      X, Y : Integer;
   end record
      with Convention => C;

   procedure Move_Point (Self : in out Point; X, Y : Integer)
      with Convention => C;

   function Create_Point (X, Y : Integer) return Point
      with Convention => C;
end Points;
