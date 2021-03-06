----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:32:05 11/08/2013 
-- Design Name: 
-- Module Name:    Divisor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Divisor2 is
	port (clk_in, reset : in std_logic;
			clk_out : out std_logic);
end Divisor2;

architecture Behavioral of Divisor2 is

	signal clk_aux : std_logic;

begin
	
	clk_out <= clk_aux;
	process(clk_in, clk_aux, reset)
	begin
		if reset = '0' then
			clk_aux <= '0';
		elsif clk_in'event and clk_in = '1' then
			clk_aux <= not clk_aux;
		end if;
	end process;

end Behavioral;

