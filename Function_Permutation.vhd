----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2021 19:34:59
-- Design Name: 
-- Module Name: Function_Permutation - Behavioral
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

entity Function_Permutation is
    Port ( A1 : in STD_LOGIC_VECTOR (3 downto 0);
           A2 : in STD_LOGIC_VECTOR (3 downto 0);
           A3 : in STD_LOGIC_VECTOR (3 downto 0);
           A4 : in STD_LOGIC_VECTOR (3 downto 0);
           A5 : in STD_LOGIC_VECTOR (3 downto 0);
           A6 : in STD_LOGIC_VECTOR (3 downto 0);
           A7 : in STD_LOGIC_VECTOR (3 downto 0);
           A8 : in STD_LOGIC_VECTOR (3 downto 0);
           Y  : out STD_LOGIC_VECTOR (31 downto 0));
end Function_Permutation;

architecture Behavioral of Function_Permutation is

begin
Y(0)<= A5(3);
Y(1)<= A7(2);
Y(2)<= A4(3);
Y(3)<= A3(0);
Y(4)<= A1(0);
Y(5)<= A6(3);
Y(6)<= A2(3);
Y(7)<= A4(0);
Y(8)<= A8(0);
Y(9)<= A5(2);
Y(10)<= A3(3);
Y(11)<= A2(1);
Y(12)<= A7(0);
Y(13)<= A4(1);
Y(14)<= A1(2);
Y(15)<= A6(1);
Y(16)<= A8(1);
Y(17)<= A7(3);
Y(18)<= A3(3);
Y(19)<= A5(1);
Y(20)<= A1(3);
Y(21)<= A2(2);
Y(22)<= A8(2);
Y(23)<= A6(0);
Y(24)<= A4(2);
Y(25)<= A5(0);
Y(26)<= A1(1);
Y(27)<= A7(1);
Y(28)<= A3(1);
Y(29)<= A6(2);
Y(30)<= A8(3);
Y(31)<= A2(0);

end Behavioral;
