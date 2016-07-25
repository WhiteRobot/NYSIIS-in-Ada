


package body NYSIIS is


   -- from: https://en.wikipedia.org/wiki/New_York_State_Identification_and_Intelligence_System
    -- 1) Translate first characters of name: MAC -> MCC, KN -> N, K -> C, PH, PF -> FF, SCH -> SSS
    -- 2) Translate last characters of name: EE -> Y, IE -> Y, DT, RT, RD, NT, ND -> D
    -- 3) First character of key = first character of name.
    -- 4) Translate remaining characters by following rules, incrementing by one character each time:
    --      1) EV -> AF else A, E, I, O, U -> A
    --      2) Q -> G, Z -> S, M -> N
    --      3) KN -> N else K -> C
    --      4) SCH -> SSS, PH -> FF
    --      5) H -> If previous or next is non-vowel, previous.
    --      6) W -> If previous is vowel, A.
    --      7) Add current to key if current is not same as the last key character.
    -- 5) If last character is S, remove it.
    -- 6) If last characters are AY, replace with Y.
    -- 7) If last character is A, remove it.
    -- 8) Append translated key to value from step 3 (removed first character)
    -- 9) If longer than 6 characters, truncate to first 6 characters. (only needed for true NYSIIS, some versions use the full key)
   function hash( name : in String ) return String
   is
      r : String(1..255);
   begin
      r := name;



      -- rule 9
      return r(1..6);
   end hash;


end NYSIIS;
