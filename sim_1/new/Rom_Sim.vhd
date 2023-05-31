----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 01:36:02 PM
-- Design Name: 
-- Module Name: Rom_Sim1 - Behavioral
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

entity Rom_Sim is
--  Port ( );
end Rom_Sim;

architecture Behavioral of Rom_Sim is
component Rom is
    Port ( address : in STD_LOGIC_VECTOR (2 downto 0);
           data : out STD_LOGIC_VECTOR (11 downto 0));
end component;
signal address : std_logic_vector(2 downto 0);
signal data : std_logic_vector(11 downto 0);
begin
     UUT: Rom PORT MAP(
       address => address,
       data => data
   );
   process
    begin
        address <= "000";
        wait for  100ns;
        address <= "111";
        wait for  100ns;
        address <= "101";
        wait for  100ns;
        address <= "110";
        wait for  100ns;
        address <= "100";
        wait ;
    end process;
        


end Behavioral;