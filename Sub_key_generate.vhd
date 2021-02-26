----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2021 18:07:13
-- Design Name: 
-- Module Name: Sub_key_generate - Behavioral
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

entity Sub_key_generate is
    generic(Shift_parameter: in STD_LOGIC_VECTOR(1 downto 0)
            );
    Port ( 
           C : in STD_LOGIC_VECTOR (27 downto 0);
           D : in STD_LOGIC_VECTOR (27 downto 0);
           C_out : out STD_LOGIC_VECTOR (27 downto 0);
           D_out : out STD_LOGIC_VECTOR (27 downto 0);
           Key : out STD_LOGIC_VECTOR (47 downto 0));
end Sub_key_generate;

architecture Behavioral of Sub_key_generate is
component Left_shift_1 is
    Port ( data_in : in STD_LOGIC_VECTOR (27 downto 0);
           data_out : out STD_LOGIC_VECTOR (27 downto 0));
end component;

component Left_shift_2 is
    Port ( data_in : in STD_LOGIC_VECTOR (27 downto 0);
           data_out : out STD_LOGIC_VECTOR (27 downto 0));
end component;

component SecondKeyPermutation is
    Port ( C,D : in STD_LOGIC_VECTOR(28 downto 1);
           X : out STD_LOGIC_VECTOR(47 downto 0));
end component;
Signal Left_out,Right_out: STD_LOGIC_VECTOR(27 downto 0);
begin
Shift_1 : if (Shift_parameter = "01") generate
           s1: Left_shift_1 port map(data_in=>C,data_out=>Left_out);
           s2: Left_shift_1 port map(data_in=>D,data_out=>Right_out);
         end generate Shift_1;
Shift_2 : if (Shift_parameter = "10") generate
           s3: Left_shift_2 port map(data_in=>C,data_out=>Left_out);
           s4: Left_shift_2 port map(data_in=>D,data_out=>Right_out);
         end generate Shift_2;
K1: SecondKeyPermutation port map(C=>Left_out,D=>Right_out,X=>Key);
C_out<= Left_out;
D_out<=Right_out;
end Behavioral;
