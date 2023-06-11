----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2023 09:07:00 PM
-- Design Name: 
-- Module Name: AU_7_Seg_Sim - Behavioral
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

entity Seg_7_Sim is
--  Port ( );
end Seg_7_Sim;

architecture Behavioral of Seg_7_Sim is

component Seg_7 is
Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
        O : out STD_LOGIC_VECTOR (6 downto 0));
end component;
signal I :  STD_LOGIC_VECTOR (3 downto 0);
signal O :  STD_LOGIC_VECTOR (6 downto 0);


begin
 UUT: Seg_7 PORT MAP(
       I=> I,
       O => O);

process
            begin
               
                I <= "0111";
            WAIT FOR 100 ns;
                I <= "1110";
            wait  for 100ns;
                I <= "0101";
            wait  for 100ns;
                I <= "0011";
            wait  for 100ns;
                I <= "1101";
                --------------
            wait  for 100ns;
                I <= "1010";
            wait  for 100ns;
                I <= "1111";
        
          WAIT; 
  
      end process;
  

end Behavioral;