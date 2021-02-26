----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2021 19:15:11
-- Design Name: 
-- Module Name: Round - Behavioral
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

entity Round is
    Port ( left_in : in STD_LOGIC_VECTOR (31 downto 0);
           right_in : in STD_LOGIC_VECTOR (31 downto 0);
           subkey : in STD_LOGIC_VECTOR(47 downto 0);
           left_out : out STD_LOGIC_VECTOR (31 downto 0);
           right_out : out STD_LOGIC_VECTOR (31 downto 0));
end Round;

architecture Behavioral of Round is
component Crypto_Function_F is
    port(	data_in: in std_logic_vector(31 downto 0);
	key: in std_logic_vector(47 downto 0);
	data_out: out std_logic_vector(31 downto 0));
end component;

signal right_xor_in,xor_out: STD_LOGIC_VECTOR(31 downto 0);
begin

S1: Crypto_Function_F port map(data_in=>right_in,key=>subkey,data_out=>right_xor_in);

xor_out<= left_in xor right_xor_in;
left_out<=right_in;
right_out<=xor_out;

end Behavioral;
