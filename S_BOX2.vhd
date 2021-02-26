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

entity S_BOX2 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end S_BOX2;

architecture Behavioral of S_BOX2 is
type S_Box is array(0 to 3, 0 to 15) of integer range 0 to 15;
signal output_row : STD_LOGIC_VECTOR(1 downto 0):="UU";
signal output_col : STD_LOGIC_VECTOR(3 downto 0):="UUUU";
signal S_Box2_table: S_Box := ((15,1,8,14,6,11,3,4,9,7,2,13,12,0,5,10),(3,13,4,7,15,2,8,14,12,0,1,10,6,9,11,5),(0,14,7,11,10,4,13,1,5,8,12,6,9,3,2,15),(13,8,10,1,3,15,4,2,11,6,7,12,0,5,14,9));


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
Y<= std_logic_vector(to_unsigned(S_Box2_table(to_integer(unsigned(output_row)),to_integer(unsigned(output_col))),4));

end process;
end Behavioral;
