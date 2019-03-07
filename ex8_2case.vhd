----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 11:20:36 AM
-- Design Name: 
-- Module Name: ex8_2case - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ex8_2case is
  Port (A1, A2, B1, B2, D1 : in std_logic;
        E : out std_logic );
end ex8_2case;

architecture Behavioral of ex8_2case is
signal temp : std_logic;
begin

temp <= (A1 AND A2) OR (B1 OR B2) OR (B2 AND (NOT D1));

p: process is
    begin
    case(temp) is
    when '1' => E <= '1';
    when others => E <= '0';
    end case; 
end process p;

end Behavioral;