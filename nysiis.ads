package NYSIIS is

   --  TDA_TYPE specifies the type of the data structure to be ordered
   --  KEY_TYPE is an integer which specifies the range of the index for the
   --  data structure to order.

   --  The function SWAP, SIZE and GREATEREQUAL should be called sending
   --  the data structure as the first parameter. SWAP will exchange
   --  elements at 2 positions, SIZE will return the number of elements inside
   --  the TDA and GREATEREQUAL will return a BOOLEAN when comparing elements
   --  at 2 given positions.

   --  INITIAL_INDEX will contain the first position to begin sorting.


   function hash( name : in String ) return String
   with
       Pre => name'Size > 3 and then name'Size <= 255,
       Post => hash'Result'Size <= 6;

end NYSIIS;
