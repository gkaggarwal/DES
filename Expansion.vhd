----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2021 17:33:09
-- Design Name: 
-- Module Name: Expansion - Behavioral
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

entity Expansion is
    Port ( X : in STD_LOGIC_VECTOR(32 downto 1);
           Y : out STD_LOGIC_VECTOR(48 downto 1));
end Expansion;

architecture Behavioral of Expansion is

begin

Y(1)<=X(32);
Y(6 downto 2)<=X(5 downto 1);
Y(12 downto 7)<=X(9 downto 4);
Y(18 downto 13)<=X(13 downto 8);
Y(24 downto 19)<=X(17 downto 12);
Y(30 downto 25)<=X(21 downto 16);
Y(36 downto 31)<=X(25 downto 20);
Y(42 downto 37)<=X(29 downto 24);
Y(47 downto 43)<=X(32 downto 28);
Y(48)<=X(1);

end Behavioral;
