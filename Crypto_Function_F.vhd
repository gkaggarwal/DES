----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2021 17:33:09
-- Design Name: 
-- Module Name: Crypto_Function_F - Behavioral
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

entity Crypto_Function_F is
    port(	data_in: in std_logic_vector(31 downto 0);
	key: in std_logic_vector(47 downto 0);
	data_out: out std_logic_vector(31 downto 0));
end Crypto_Function_F;

architecture Behavioral of Crypto_Function_F is

component Expansion is
    Port ( X : in STD_LOGIC_VECTOR(32 downto 1);
           Y : out STD_LOGIC_VECTOR(48 downto 1));
end component;

component Xor_48bit is
    Port ( A : in STD_LOGIC_VECTOR (47 downto 0);
           B : in STD_LOGIC_VECTOR (47 downto 0);
           C : out STD_LOGIC_VECTOR (47 downto 0));
end component;

component Substitution_Box_S is
    Port ( X : in STD_LOGIC_VECTOR (47 downto 0);
           Y : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component Function_Permutation is
    Port ( A1 : in STD_LOGIC_VECTOR (3 downto 0);
           A2 : in STD_LOGIC_VECTOR (3 downto 0);
           A3 : in STD_LOGIC_VECTOR (3 downto 0);
           A4 : in STD_LOGIC_VECTOR (3 downto 0);
           A5 : in STD_LOGIC_VECTOR (3 downto 0);
           A6 : in STD_LOGIC_VECTOR (3 downto 0);
           A7 : in STD_LOGIC_VECTOR (3 downto 0);
           A8 : in STD_LOGIC_VECTOR (3 downto 0);
           Y  : out STD_LOGIC_VECTOR (31 downto 0));
end component;
signal Expanded_data,Xored_data: STD_LOGIC_VECTOR(47 downto 0);
signal Substituted_data: STD_LOGIC_VECTOR(31 downto 0);
begin
S1: Expansion Port map(X=>data_in,Y=>Expanded_data);

S2: Xor_48bit port map(A=>Expanded_data,B=>key,C=> Xored_data);

S3:Substitution_Box_S port map(X=>Xored_data,Y=>Substituted_data);

S4: Function_Permutation port map(A1=>Substituted_data(3 downto 0),A2=>Substituted_data(7 downto 4),A3=>Substituted_data(11 downto 8),A4=>Substituted_data(15 downto 12),A5=>Substituted_data(19 downto 16),A6=>Substituted_data(23 downto 20),A7=>Substituted_data(27 downto 24),A8=>Substituted_data(31 downto 28),Y=>data_out);

end Behavioral;
