----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2021 17:33:09
-- Design Name: 
-- Module Name: DES_Encryption - Behavioral
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

entity DES_Encryption is
    Port ( data_in : in STD_LOGIC_VECTOR (63 downto 0);
           key: in STD_LOGIC_VECTOR(63 downto 0);
           data_out : out STD_LOGIC_VECTOR (63 downto 0));
end DES_Encryption;

architecture Behavioral of DES_Encryption is
component Initial_Permutation is
    Port ( X : in STD_LOGIC_VECTOR (64 downto 1);
           Left_X_IP : out STD_LOGIC_VECTOR (32 downto 1);
           Right_X_IP : out STD_LOGIC_VECTOR (32 downto 1));
end component;
component FirstKey_Permutation is
    Port ( X : in STD_LOGIC_VECTOR(64 downto 1);
           C,D : out STD_LOGIC_VECTOR(27 downto 0));
end component;
component Sub_key_generate is
    generic(Shift_parameter: in STD_LOGIC_VECTOR(1 downto 0)
            );
    Port ( 
           C : in STD_LOGIC_VECTOR (27 downto 0);
           D : in STD_LOGIC_VECTOR (27 downto 0);
           C_out : out STD_LOGIC_VECTOR (27 downto 0);
           D_out : out STD_LOGIC_VECTOR (27 downto 0);
           Key : out STD_LOGIC_VECTOR (47 downto 0));
end component;

component Round is
    Port ( left_in : in STD_LOGIC_VECTOR (31 downto 0);
           right_in : in STD_LOGIC_VECTOR (31 downto 0);
           subkey : in STD_LOGIC_VECTOR(47 downto 0);
           left_out : out STD_LOGIC_VECTOR (31 downto 0);
           right_out : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component Final_Permutation is
    Port ( X_Left : in STD_LOGIC_VECTOR (32 downto 1);
           X_Right : in STD_LOGIC_VECTOR (32 downto 1);
           Y : out STD_LOGIC_VECTOR (64 downto 1));
end component;

signal left_data_in_IP,right_data_in_IP,left_in_1,right_in_1,left_in_2,right_in_2,left_in_3,right_in_3,left_in_4,right_in_4,left_in_5,right_in_5,left_in_6,right_in_6,left_in_7,right_in_7,left_in_8,right_in_8,left_in_9,right_in_9,left_in_10,right_in_10,left_in_11,right_in_11,left_in_12,right_in_12,left_in_13,right_in_13,left_in_14,right_in_14,left_in_15,right_in_15,left_in_16,right_in_16: STD_LOGIC_VECTOR(31 downto 0);
signal left_key,right_key ,left_key_1,right_key_1,left_key_2,right_key_2,left_key_3,right_key_3,left_key_4,right_key_4,left_key_5,right_key_5,left_key_6,right_key_6,left_key_7,right_key_7,left_key_8,right_key_8,left_key_9,right_key_9,left_key_10,right_key_10,left_key_11,right_key_11,left_key_12,right_key_12,left_key_13,right_key_13,left_key_14,right_key_14,left_key_15,right_key_15,left_key_16,right_key_16:STD_LOGIC_VECTOR(27 downto 0);
signal subkey1,subkey2,subkey3,subkey4,subkey5,subkey6,subkey7,subkey8,subkey9,subkey10,subkey11,subkey12,subkey13,subkey14,subkey15,subkey16:STD_LOGIC_VECTOR(47 downto 0);
begin

S1:

  Initial_permutation port map(X=>data_in,Left_X_IP=>left_data_in_IP,Right_X_IP=>right_data_in_IP);
   
S2:
  
   FirstKey_Permutation port map(X=>key,C=>left_key,D=>right_key);
   
S3:
   
   Sub_key_generate generic map(Shift_parameter=>"01")
                    port map(C=>left_key,D=>right_key,C_out=>left_key_1,D_out=>right_key_1,key=>subkey1);
   
S4:
    
  Round port map(left_in=>left_data_in_IP,right_in=>right_data_in_IP,subkey=>subkey1,left_out=>left_in_1,right_out=>right_in_1);

S5:
  
   Sub_key_generate generic map(Shift_parameter=>"01")
                    port map(C=>left_key_1,D=>right_key_1,C_out=>left_key_2,D_out=>right_key_2,key=>subkey2);

S6:
    
  Round port map(left_in=>left_in_1,right_in=>right_in_1,subkey=>subkey2,left_out=>left_in_2,right_out=>right_in_2);

S7:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_2,D=>right_key_2,C_out=>left_key_3,D_out=>right_key_3,key=>subkey3);

S8:
    
  Round port map(left_in=>left_in_2,right_in=>right_in_2,subkey=>subkey3,left_out=>left_in_3,right_out=>right_in_3);


S9:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_3,D=>right_key_3,C_out=>left_key_4,D_out=>right_key_4,key=>subkey4);

S10:
    
  Round port map(left_in=>left_in_3,right_in=>right_in_3,subkey=>subkey4,left_out=>left_in_4,right_out=>right_in_4);

S11:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_4,D=>right_key_4,C_out=>left_key_5,D_out=>right_key_5,key=>subkey5);

S12:
    
  Round port map(left_in=>left_in_4,right_in=>right_in_4,subkey=>subkey5,left_out=>left_in_5,right_out=>right_in_5);

S13:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_5,D=>right_key_5,C_out=>left_key_6,D_out=>right_key_6,key=>subkey6);

S14:
    
  Round port map(left_in=>left_in_5,right_in=>right_in_5,subkey=>subkey6,left_out=>left_in_6,right_out=>right_in_6);

S15:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_6,D=>right_key_6,C_out=>left_key_7,D_out=>right_key_7,key=>subkey7);

S16:
    
  Round port map(left_in=>left_in_6,right_in=>right_in_6,subkey=>subkey7,left_out=>left_in_7,right_out=>right_in_7);

S17:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_7,D=>right_key_7,C_out=>left_key_8,D_out=>right_key_8,key=>subkey8);

S18:
    
  Round port map(left_in=>left_in_7,right_in=>right_in_7,subkey=>subkey8,left_out=>left_in_8,right_out=>right_in_8);

S19:
  
  Sub_key_generate generic map(Shift_parameter=>"01")
                    port map(C=>left_key_8,D=>right_key_8,C_out=>left_key_9,D_out=>right_key_9,key=>subkey9);

S20:
    
  Round port map(left_in=>left_in_8,right_in=>right_in_8,subkey=>subkey9,left_out=>left_in_9,right_out=>right_in_9);


S21:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_9,D=>right_key_9,C_out=>left_key_10,D_out=>right_key_10,key=>subkey10);

S22:
    
  Round port map(left_in=>left_in_9,right_in=>right_in_9,subkey=>subkey10,left_out=>left_in_10,right_out=>right_in_10);


S23:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_10,D=>right_key_10,C_out=>left_key_11,D_out=>right_key_11,key=>subkey11);

S24:
    
  Round port map(left_in=>left_in_10,right_in=>right_in_10,subkey=>subkey11,left_out=>left_in_11,right_out=>right_in_11);


S25:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_11,D=>right_key_11,C_out=>left_key_12,D_out=>right_key_12,key=>subkey12);

S26:
    
  Round port map(left_in=>left_in_11,right_in=>right_in_11,subkey=>subkey12,left_out=>left_in_12,right_out=>right_in_12);


S27:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_12,D=>right_key_12,C_out=>left_key_13,D_out=>right_key_13,key=>subkey13);

S28:
    
  Round port map(left_in=>left_in_12,right_in=>right_in_12,subkey=>subkey13,left_out=>left_in_13,right_out=>right_in_13);


S29:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_13,D=>right_key_13,C_out=>left_key_14,D_out=>right_key_14,key=>subkey14);

S30:
    
  Round port map(left_in=>left_in_13,right_in=>right_in_13,subkey=>subkey14,left_out=>left_in_14,right_out=>right_in_14);


S31:
  
  Sub_key_generate generic map(Shift_parameter=>"10")
                    port map(C=>left_key_14,D=>right_key_14,C_out=>left_key_15,D_out=>right_key_15,key=>subkey15);

S32:
    
  Round port map(left_in=>left_in_14,right_in=>right_in_14,subkey=>subkey15,left_out=>left_in_15,right_out=>right_in_15);


S33:
  
  Sub_key_generate generic map(Shift_parameter=>"01")
                    port map(C=>left_key_15,D=>right_key_15,C_out=>left_key_16,D_out=>right_key_16,key=>subkey16);

S34:
    
  Round port map(left_in=>left_in_15,right_in=>right_in_15,subkey=>subkey16,left_out=>left_in_16,right_out=>right_in_16);

S35: 

  Final_Permutation port map(X_Left=>right_in_16,X_Right=>left_in_16,Y=>data_out);

end Behavioral;
