----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 04:40:31 PM
-- Design Name: 
-- Module Name: ex8_7case - Behavioral
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

entity ex8_7case is
    port ( A,B,C : in std_logic;
           F : out std_logic_vector(7 downto 0));
end ex8_7case;

architecture Behavioral of ex8_7case is
signal ABC : std_logic_vector(2 downto 0);
begin
ABC <= A & B & C;

p: process(ABC)
    begin
    case(ABC) is
    when "111" => F <= "11111110";
    when "110" => F <= "11111101";
    when "101" => F <= "11111011";
    when "100" => F <= "11110111";
    when "011" => F <= "11101111";
    when "010" => F <= "11011111";
    when "001" => F <= "10111111";
    when "000" => F <= "01111111";
    when others => F <= (others =>'1');
    end case;
end process;

end Behavioral;
