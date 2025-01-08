```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array

   function Get_Value (Index : Integer) return Integer is
   begin
      if Index < 1 or Index > 10 then
         return 0; -- Handle out-of-bounds index gracefully
         -- Alternatively: raise an exception with more context
         -- raise Constraint_Error with "Index out of range"; 
      else
         return My_Arr(Index);
      end if;
   end Get_Value;

begin
   -- Handle the potential error
   Put_Line(Integer'Image(Get_Value(12)));  -- Returns 0
   Put_Line(Integer'Image(Get_Value(5)));   -- Returns the element at index 5
   -- Other operations
end Example;
```