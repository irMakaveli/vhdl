----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:22 02/03/2022 
-- Design Name: 
-- Module Name:    openDoor - Behavioral 
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

entity openDoor is
port(
	clk1 : in std_logic;
	od1 : in std_logic;
	opend1 : out std_logic;
	so1 : in std_logic;
	sc1 : in std_logic;
	s : in std_logic
);
end openDoor;

architecture Behavioral of openDoor is
begin
process(clk1,od1,s)
	begin
	if(clk1'event and clk1 = '1' and od1='1')then
		if(so1 = '0') then
		opend1 <= '1';
		end if;
	end if;
if(s='1') THEN
opend1<='1';
end if;
end process;
end Behavioral;