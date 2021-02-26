----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2021 17:40:33
-- Design Name: 
-- Module Name: Left_shift_2 - Behavioral
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

entity Left_shift_2 is
    Port ( data_in : in STD_LOGIC_VECTOR (27 downto 0);
           data_out : out STD_LOGIC_VECTOR (27 downto 0));
end Left_shift_2;

architecture Behavioral of Left_shift_2 is

begin

	data_out(0)<=data_in(2);
	data_out(1)<=data_in(3);
	data_out(2)<=data_in(4);
	data_out(3)<=data_in(5);
	data_out(4)<=data_in(6);
	data_out(5)<=data_in(7);
	data_out(6)<=data_in(8);

	data_out(7)<=data_in(9);
	data_out(8)<=data_in(10);
	data_out(9)<=data_in(11);
	data_out(10)<=data_in(12);
	data_out(11)<=data_in(13);
	data_out(12)<=data_in(14);
	data_out(13)<=data_in(15);

	data_out(14)<=data_in(16);
	data_out(15)<=data_in(17);
	data_out(16)<=data_in(18);
	data_out(17)<=data_in(19);
	data_out(18)<=data_in(20);
	data_out(19)<=data_in(21);
	data_out(20)<=data_in(22);

	data_out(21)<=data_in(23);
	data_out(22)<=data_in(24);
	data_out(23)<=data_in(25);
	data_out(24)<=data_in(26);
	data_out(25)<=data_in(27);
	data_out(26)<=data_in(0);
	data_out(27)<=data_in(1);

end Behavioral;
