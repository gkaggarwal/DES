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

entity S_BOX7 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end S_BOX7;

architecture Behavioral of S_BOX7 is
type S_Box is array(0 to 3, 0 to 15) of integer range 0 to 15;
signal output_row : STD_LOGIC_VECTOR(1 downto 0):="UU";
signal output_col : STD_LOGIC_VECTOR(3 downto 0):="UUUU";
signal S_BOX7_table: S_Box := ((4,11,2,14,15,0,8,13,3,12,9,7,5,10,6,1),(13,0,11,7,4,9,1,10,14,3,5,12,2,15,8,6),(1,4,11,13,12,3,7,14,10,15,6,8,0,5,9,2),(6,11,13,8,1,4,10,7,9,5,0,15,14,2,3,12));

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
Y<= std_logic_vector(to_unsigned(S_Box7_table(to_integer(unsigned(output_row)),to_integer(unsigned(output_col))),4));

end process;
end Behavioral;
