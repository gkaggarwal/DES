----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.02.2021 17:48:31
-- Design Name: 
-- Module Name: S_BOX1 - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity S_BOX8 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end S_BOX8;

architecture Behavioral of S_BOX8 is
type S_Box is array(0 to 3, 0 to 15) of integer range 0 to 15;
signal output_row : STD_LOGIC_VECTOR(1 downto 0):="UU";
signal output_col : STD_LOGIC_VECTOR(3 downto 0):="UUUU";
signal S_BOX8_table: S_Box := ((13,2,8,4,6,15,11,1,10,9,3,14,5,0,12,7),(1,15,13,8,10,3,7,4,12,5,6,11,0,14,9,2),(7,11,4,1,9,12,14,2,0,6,10,13,15,3,5,8),(2,1,14,7,4,10,8,13,15,12,9,0,3,5,6,11));

begin


process(X)
begin
if(X(6)='0') then
    if X(1)='0' then
    output_row<="00";
    else
    output_row<="01";
    end if;
elsif (X(6)='1') then
    if X(1)='0' then
    output_row<="10";
    else
    output_row<="11";
    end if;
end if;
output_col<=X(5 downto 2);
Y<= std_logic_vector(to_unsigned(S_Box8_table(to_integer(unsigned(output_row)),to_integer(unsigned(output_col))),4));

end process;
end Behavioral;
