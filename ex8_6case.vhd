----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 01:42:24 PM
-- Design Name: 
-- Module Name: ex8_6case - Behavioral
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

entity ex8_6case is
    port ( Data_in : in std_logic_vector (7 downto 0);
           SEL : in std_logic_vector (2 downto 0);
           F : out std_logic);
end ex8_6case;

architecture Behavioral of ex8_6case is
begin
    p: process (SEL,Data_in)
        begin
        case (SEL) is
        when "000" => F <= Data_in(0);
        when "001" => F <= Data_in(1);
        when "010" => F <= Data_in(2);
        when "011" => F <= Data_in(3);
        when "100" => F <= Data_in(4);
        when "101" => F <= Data_in(5);
        when "110" => F <= Data_in(6);
        when "111" => F <= Data_in(7);
        when others => F <= '0';
        end case;
    end process p;
end Behavioral;
