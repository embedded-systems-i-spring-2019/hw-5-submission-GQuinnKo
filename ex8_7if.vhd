----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 04:43:44 PM
-- Design Name: 
-- Module Name: ex8_7if - Behavioral
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

entity ex8_7if is
    port ( A,B,C : in std_logic;
           F : out std_logic_vector(7 downto 0));
end ex8_7if;

architecture Behavioral of ex8_7if is
signal ABC : std_logic_vector(2 downto 0);
begin
ABC <= A & B & C;

p: process(ABC)
    begin
    if    (ABC = "111") then F <= "11111110";
    elsif (ABC = "110") then F <= "11111101";
    elsif (ABC = "101") then F <= "11111011";
    elsif (ABC = "100") then F <= "11110111";
    elsif (ABC = "011") then F <= "11101111";
    elsif (ABC = "010") then F <= "11011111";
    elsif (ABC = "001") then F <= "10111111";
    elsif (ABC = "000") then F <= "01111111";
    else F <= (others => '1');
    end if;
end process;

end Behavioral;
