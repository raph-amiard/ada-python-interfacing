with Ada.Text_IO; use Ada.Text_IO;
with System.Address_Image;

package body Points is

   function Create_Point (X, Y : Integer) return Point is
   begin
      return (X, Y);
   end Create_Point;

   procedure Move_Point (Self : in out Point; X, Y : Integer) is
   begin
      Self.X := X;
      Self.Y := Y;
   end Move_Point;

end Points;
