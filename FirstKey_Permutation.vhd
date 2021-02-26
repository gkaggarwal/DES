----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2021 19:34:59
-- Design Name: 
-- Module Name: FirstKey_Permutation - Behavioral
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

entity FirstKey_Permutation is
    Port ( X : in STD_LOGIC_VECTOR(64 downto 1);
           C,D : out STD_LOGIC_VECTOR(27 downto 0));
end FirstKey_Permutation;

architecture Behavioral of FirstKey_Permutation is

begin

C(0)<= X(63);
C(1)<= X(55);
C(2)<= X(47);
C(3)<= X(39);
C(4)<= X(31);
C(5)<= X(23);
C(6)<= X(15);
C(7)<= X(7);
C(8)<= X(62);
C(9)<= X(54);
C(10)<= X(46);
C(11)<= X(38);
C(12)<= X(30);
C(13)<= X(22);
C(14)<= X(14);
C(15)<= X(6);
C(16)<= X(61);
C(17)<= X(53);
C(18)<= X(45);
C(19)<= X(37);
C(20)<= X(29);
C(21)<= X(21);
C(22)<= X(13);
C(23)<= X(5);
C(24)<= X(28);
C(25)<= X(20);
C(26)<= X(12);
C(27)<= X(4);

D(0)<= X(57);
D(1)<= X(49);
D(2)<= X(41);
D(3)<= X(33);
D(4)<= X(25);
D(5)<= X(17);
D(6)<= X(9);
D(7)<= X(1);
D(8)<= X(58);
D(9)<= X(50);
D(10)<= X(42);
D(11)<= X(34);
D(12)<= X(26);
D(13)<= X(18);
D(14)<= X(10);
D(15)<= X(2);
D(16)<= X(59);
D(17)<= X(51);
D(18)<= X(43);
D(19)<= X(35);
D(20)<= X(27);
D(21)<= X(19);
D(22)<= X(11);
D(23)<= X(3);
D(24)<= X(60);
D(25)<= X(52);
D(26)<= X(44);
D(27)<= X(36);



end Behavioral;
