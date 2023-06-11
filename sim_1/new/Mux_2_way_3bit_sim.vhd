----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/11/2023 01:52:43 PM
-- Design Name: 
-- Module Name: Mux_2_way_3bit_sim - Behavioral
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

entity Mux_2_way_3bit_sim is
--  Port ( );
end Mux_2_way_3bit_sim;

architecture Behavioral of Mux_2_way_3bit_sim is
component Mux_2_Way_3_bit is
    Port ( A_3 : in STD_LOGIC_VECTOR (2 downto 0);
           A_J : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (2 downto 0);
           Jmp : in STD_LOGIC);
end component;
signal A_3,A_J,S : std_logic_vector(2 downto 0);
signal Jmp : std_logic;
begin
    UUT: Mux_2_Way_3_bit PORT MAP(
    A_3 => A_3,
    A_J => A_J,
    S => S,
    Jmp => Jmp    
);
process
begin

    A_3 <= "111";
    A_J <= "100";
   
    
    Jmp <= '0';
    wait for 100 ns;
    Jmp <= '1';
    wait for 100 ns;
    
     A_3 <= "010";
     A_J <= "011";
     
    Jmp <= '0';
    wait for 100 ns;
    Jmp <= '1';
    
    wait;
    
    
end process;
    


end Behavioral;
