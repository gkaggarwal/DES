library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Initial_Permutation is
    Port ( X : in STD_LOGIC_VECTOR (64 downto 1);
           Left_X_IP : out STD_LOGIC_VECTOR (32 downto 1);
           Right_X_IP : out STD_LOGIC_VECTOR (32 downto 1));
end Initial_Permutation;

architecture Behavioral of Initial_Permutation is

begin

Left_X_IP(1)<=X(58);
Left_X_IP(2)<=X(50);
Left_X_IP(3)<=X(42);
Left_X_IP(4)<=X(34);
Left_X_IP(5)<=X(26);
Left_X_IP(6)<=X(18);
Left_X_IP(7)<=X(10);
Left_X_IP(8)<=X(2);
Left_X_IP(9)<=X(60);
Left_X_IP(10)<=X(52);
Left_X_IP(11)<=X(44);
Left_X_IP(12)<=X(36);
Left_X_IP(13)<=X(28);
Left_X_IP(14)<=X(20);
Left_X_IP(15)<=X(12);
Left_X_IP(16)<=X(4);
Left_X_IP(17)<=X(62);
Left_X_IP(18)<=X(54);
Left_X_IP(19)<=X(46);
Left_X_IP(20)<=X(38);
Left_X_IP(21)<=X(30);
Left_X_IP(22)<=X(22);
Left_X_IP(23)<=X(14);
Left_X_IP(24)<=X(6);
Left_X_IP(25)<=X(64);
Left_X_IP(26)<=X(56);
Left_X_IP(27)<=X(48);
Left_X_IP(28)<=X(40);
Left_X_IP(29)<=X(32);
Left_X_IP(30)<=X(24);
Left_X_IP(31)<=X(16);
Left_X_IP(32)<=X(8);

Right_X_IP(1)<=X(57);
Right_X_IP(2)<=X(49);
Right_X_IP(3)<=X(41);
Right_X_IP(4)<=X(33);
Right_X_IP(5)<=X(25);
Right_X_IP(6)<=X(17);
Right_X_IP(7)<=X(9);
Right_X_IP(8)<=X(1);
Right_X_IP(9)<=X(59);
Right_X_IP(10)<=X(51);
Right_X_IP(11)<=X(43);
Right_X_IP(12)<=X(35);
Right_X_IP(13)<=X(27);
Right_X_IP(14)<=X(19);
Right_X_IP(15)<=X(11);
Right_X_IP(16)<=X(3);
Right_X_IP(17)<=X(61);
Right_X_IP(18)<=X(53);
Right_X_IP(19)<=X(45);
Right_X_IP(20)<=X(37);
Right_X_IP(21)<=X(29);
Right_X_IP(22)<=X(21);
Right_X_IP(23)<=X(13);
Right_X_IP(24)<=X(5);
Right_X_IP(25)<=X(63);
Right_X_IP(26)<=X(55);
Right_X_IP(27)<=X(47);
Right_X_IP(28)<=X(39);
Right_X_IP(29)<=X(31);
Right_X_IP(30)<=X(23);
Right_X_IP(31)<=X(15);
Right_X_IP(32)<=X(7);

end Behavioral;
