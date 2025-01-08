```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array

   function Get_Value (Index : Integer) return Integer is
   begin
      if Index < 1 or Index > 10 then
         raise Constraint_Error;
      else
         return My_Arr(Index);
      end if;
   end Get_Value;

begin
   -- Accessing the array with an index out of bounds. 
   -- This will raise Constraint_Error during runtime if not handled.
   Put_Line(Integer'Image(Get_Value(12))); 
   -- Other operations
end Example;
```