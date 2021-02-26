----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2021 19:34:59
-- Design Name: 
-- Module Name: SecondKeyPermutation - Behavioral
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

entity SecondKeyPermutation is
    Port ( C,D : in STD_LOGIC_VECTOR(28 downto 1);
           X : out STD_LOGIC_VECTOR(47 downto 0));
end SecondKeyPermutation;

architecture Behavioral of SecondKeyPermutation is

begin
X(0)<= D(14);
X(1)<= D(17);
X(2)<= D(11);
X(3)<= D(24);
X(4)<= D(1);
X(5)<= D(5);
X(6)<= D(3);
X(7)<= D(28);
X(8)<= D(15);
X(9)<= D(6);
X(10)<= D(21);
X(11)<= D(10);
X(12)<= D(23);
X(13)<= D(19);
X(14)<= D(12);
X(15)<= D(4);
X(16)<= D(26);
X(17)<= D(8);
X(18)<= D(16);
X(19)<= D(7);
X(20)<= D(27);
X(21)<= D(20);
X(22)<= D(13);
X(23)<= D(2);

X(24)<= C(13);
X(25)<= C(24);
X(26)<= C(3);
X(27)<= C(9);
X(28)<= C(19);
X(29)<= C(27);
X(30)<= C(2);
X(31)<= C(12);
X(32)<= C(23);
X(33)<= C(17);
X(34)<= C(5);
X(35)<= C(20);
X(36)<= C(16);
X(37)<= C(21);
X(38)<= C(11);
X(39)<= C(28);
X(40)<= C(6);
X(41)<= C(25);
X(42)<= C(18);
X(43)<= C(14);
X(44)<= C(22);
X(45)<= C(8);
X(46)<= C(1);
X(47)<= C(4);


end Behavioral;
