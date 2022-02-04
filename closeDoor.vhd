----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:56 02/03/2022 
-- Design Name: 
-- Module Name:    closeDoor - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity closeDoor is
port(
		clk1 : in std_logic;
		cd1 : in std_logic;
		od1 : in std_logic;
		sc1 :in std_logic;
		so1 : in std_logic;
		sb1 : in std_logic;
		close1 : out std_logic;
		opend1 : out std_logic
		);
end closeDoor;
architecture Behavioral of closeDoor is
signal op:std_logic:='0';
signal counter: unsigned(3 downto 0):="0000";
begin
process (clk1 , od1, cd1, sb1)
begin
if(clk1'event and clk1='1' )then
	counter <= counter + 1;
	if(cd1='1')then
	counter <= "0000";
	close1<='1';
	end if;
	if(counter = "1010")then
		counter <= "0000";
		close1<='1';
	end if;
end if;
if(sb1 = '1' and cd1='1') then
close1<='0';
opend1<='1';
end if;

if(so1='1' and (od1 ='1' or cd1='1'))then 
close1<='1';
end if;

if(sc1='0' and (od1 ='1' or cd1='1') and so1 = '0') then
op<='1';
close1<='0';
end if;
if(sc1 = '0' and so1 = '0' and (od1 ='1' or cd1='1') and op ='1') THEN
op<='0';
opend1<='1';
end if;
end process;
end Behavioral;