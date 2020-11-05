----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:36:24 10/25/2020 
-- Design Name: 
-- Module Name:    segment - Behavioral 
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

entity segment is
    Port ( sw : in  STD_LOGIC_VECTOR (2 downto 0);
           a : out  STD_LOGIC;
           b : out  STD_LOGIC;
           c : out  STD_LOGIC;
           d : out  STD_LOGIC;
           e : out  STD_LOGIC;
           f : out  STD_LOGIC;
           g : out  STD_LOGIC;
			  disp : out STD_LOGIC);
end segment;

architecture Behavioral of segment is
signal l: STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
begin

process(sw) is

	begin
		
			case(sw) is
			when "000" => l <= "0000001";
			when "001" => l <= "1001111";
			when "010" => l <= "0010010";
			when "011" => l <= "0000110";
			when "100" => l <= "1001100";
			when "101" => l <= "0100100";
			when "110" => l <= "0100000";
			when "111" => l <= "0010010";
			when others => l <="0000001";
			end case;
			
			end process;
			disp <= '1';
			a <= l(6);
			b <= l(5);
			c <= l(4);
			d <= l(3);
			e <= l(2);
			f <= l(1);
			g <= l(0);



end Behavioral;

