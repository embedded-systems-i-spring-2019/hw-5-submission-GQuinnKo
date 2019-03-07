----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 01:42:24 PM
-- Design Name: 
-- Module Name: ex8_6if - Behavioral
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

entity ex8_6if is
    port ( Data_in : in std_logic_vector (7 downto 0);
           SEL : in std_logic_vector (2 downto 0);
           F : out std_logic);
end ex8_6if;

architecture Behavioral of ex8_6if is

begin
    p: process (SEL,Data_in)
        begin
        if (SEL = "111") then F <= Data_in(7);
        elsif (SEL = "110") then F <= Data_in(6);
        elsif (SEL = "101") then F <= Data_in(5);
        elsif (SEL = "100") then F <= Data_in(4);
        elsif (SEL = "011") then F <= Data_in(3);
        elsif (SEL = "010") then F <= Data_in(2);
        elsif (SEL = "001") then F <= Data_in(1);
        elsif (SEL = "000") then F <= Data_in(0);
        else F <= '0';
        end if;

    end process p;
end Behavioral;
