----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2021 17:33:09
-- Design Name: 
-- Module Name: Final_Permutation - Behavioral
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

entity Final_Permutation is
    Port ( X_Left : in STD_LOGIC_VECTOR (32 downto 1);
           X_Right : in STD_LOGIC_VECTOR (32 downto 1);
           Y : out STD_LOGIC_VECTOR (64 downto 1));
end Final_Permutation;

architecture Behavioral of Final_Permutation is

begin

Y(1)<=X_Left(8);
Y(3)<=X_Left(16);
Y(5)<=X_Left(24);
Y(7)<=X_Left(32);
Y(9)<=X_Left(7);
Y(11)<=X_Left(15);
Y(13)<=X_Left(23);
Y(15)<=X_Left(31);
Y(17)<=X_Left(6);
Y(19)<=X_Left(14);
Y(21)<=X_Left(22);
Y(23)<=X_Left(30);
Y(25)<=X_Left(5);
Y(27)<=X_Left(13);
Y(29)<=X_Left(21);
Y(31)<=X_Left(29);
Y(33)<=X_Left(4);
Y(35)<=X_Left(12);
Y(37)<=X_Left(20);
Y(39)<=X_Left(28);
Y(41)<=X_Left(3);
Y(43)<=X_Left(11);
Y(45)<=X_Left(19);
Y(47)<=X_Left(27);
Y(49)<=X_Left(2);
Y(51)<=X_Left(10);
Y(53)<=X_Left(18);
Y(55)<=X_Left(26);
Y(57)<=X_Left(1);
Y(59)<=X_Left(9);
Y(61)<=X_Left(17);
Y(63)<=X_Left(25);

Y(2)<=X_Right(8);
Y(4)<=X_Right(16);
Y(6)<=X_Right(24);
Y(8)<=X_Right(32);
Y(10)<=X_Right(7);
Y(12)<=X_Right(15);
Y(14)<=X_Right(23);
Y(16)<=X_Right(31);
Y(18)<=X_Right(6);
Y(20)<=X_Right(14);
Y(22)<=X_Right(22);
Y(24)<=X_Right(30);
Y(26)<=X_Right(5);
Y(28)<=X_Right(13);
Y(30)<=X_Right(21);
Y(32)<=X_Right(29);
Y(34)<=X_Right(4);
Y(36)<=X_Right(12);
Y(38)<=X_Right(20);
Y(40)<=X_Right(28);
Y(42)<=X_Right(3);
Y(44)<=X_Right(11);
Y(46)<=X_Right(19);
Y(48)<=X_Right(27);
Y(50)<=X_Right(2);
Y(52)<=X_Right(10);
Y(54)<=X_Right(18);
Y(56)<=X_Right(26);
Y(58)<=X_Right(1);
Y(60)<=X_Right(9);
Y(62)<=X_Right(17);
Y(64)<=X_Right(25);




end Behavioral;
