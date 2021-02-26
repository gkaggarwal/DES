----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2021 17:33:09
-- Design Name: 
-- Module Name: Substitution_Box_S - Behavioral
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

entity Substitution_Box_S is
    Port ( X : in STD_LOGIC_VECTOR (47 downto 0);
           Y : out STD_LOGIC_VECTOR (31 downto 0));
end Substitution_Box_S;

architecture Behavioral of Substitution_Box_S is
component S_BOX1 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end component;
component S_BOX2 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end component;

component S_BOX3 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end component;

component S_BOX4 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end component;

component S_BOX5 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end component;

component S_BOX6 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end component;

component S_BOX7 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end component;

component S_BOX8 is
    Port ( X : in STD_LOGIC_VECTOR (6 downto 1);
           Y : out STD_LOGIC_VECTOR (4 downto 1));
end component;

begin

s1: S_BOX1 port map(X(6 downto 1)=>X(5 downto 0),Y(4 downto 1)=>Y(3 downto 0));

s2:S_BOX2 port map(X(6 downto 1)=>X(11 downto 6),Y(4 downto 1)=>Y(7 downto 4));

s3:S_BOX3 port map(X(6 downto 1)=>X(17 downto 12),Y(4 downto 1)=>Y(11 downto 8));

s4:S_BOX4 port map(X(6 downto 1)=>X(23 downto 18),Y(4 downto 1)=>Y(15 downto 12));

s5:S_BOX5 port map(X(6 downto 1)=>X(29 downto 24),Y(4 downto 1)=>Y(19 downto 16));

s6:S_BOX6 port map(X(6 downto 1)=>X(35 downto 30),Y(4 downto 1)=>Y(23 downto 20));

s7:S_BOX7 port map(X(6 downto 1)=>X(41 downto 36),Y(4 downto 1)=>Y(27 downto 24));

s8:S_BOX8 port map(X(6 downto 1)=>X(47 downto 42),Y(4 downto 1)=>Y(31 downto 28));


end Behavioral;
