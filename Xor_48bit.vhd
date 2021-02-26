----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2021 18:55:03
-- Design Name: 
-- Module Name: Xor_48bit - Behavioral
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

entity Xor_48bit is
    Port ( A : in STD_LOGIC_VECTOR (47 downto 0);
           B : in STD_LOGIC_VECTOR (47 downto 0);
           C : out STD_LOGIC_VECTOR (47 downto 0));
end Xor_48bit;

architecture Behavioral of Xor_48bit is

begin

C<= A xor B;

end Behavioral;
