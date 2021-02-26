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

entity S_BOX6 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end S_BOX6;

architecture Behavioral of S_BOX6 is
type S_Box is array(0 to 3, 0 to 15) of integer range 0 to 15;
signal output_row : STD_LOGIC_VECTOR(1 downto 0):="UU";
signal output_col : STD_LOGIC_VECTOR(3 downto 0):="UUUU";
signal S_BOX6_table: S_Box := ((12,1,10,15,9,2,6,8,0,13,3,4,14,7,5,11),(10,15,4,2,7,12,9,5,6,1,13,14,0,11,3,8),(9,14,15,5,2,8,12,3,7,0,4,10,1,13,11,6),(4,3,2,12,9,5,15,10,11,14,1,7,6,0,8,13));



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
Y<= std_logic_vector(to_unsigned(S_Box6_table(to_integer(unsigned(output_row)),to_integer(unsigned(output_col))),4));

end process;
end Behavioral;
