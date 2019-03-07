library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ex8_3 is
  Port (A1, A2, B1, B2, D1 : in std_logic;
        E : out std_logic );
end ex8_3;

architecture Behavioral of ex8_3 is

begin
E <= (A1 AND A2) OR (B1 OR B2) OR (B2 AND (NOT D1));

end Behavioral;
