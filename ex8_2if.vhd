----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 12:21:39 AM
-- Design Name: 
-- Module Name: ex8_2if - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ex8_2if is
  Port (A1, A2, B1, B2, D1 : in std_logic;
        E : out std_logic );
end ex8_2if;

architecture Behavioral of ex8_2if is
begin
p: process is
    begin
    
    if(((A1 AND A2) = '1') OR ((B1 OR B2) = '1') OR ((B2 AND (NOT D1)) = '1')) then
        E <= '1';
    else
        E <= '0';
    end if;
    
end process p;

end Behavioral;
