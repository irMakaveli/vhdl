----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:44:31 02/03/2022 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

entity main is
port(
	clk : in std_logic;
	od : in std_logic;
	cd : in std_logic;
	sc : in std_logic;
	so : in std_logic;
	sb : in std_logic;
	opend : out std_logic;	
	close : out std_logic
	);
end main;
architecture Behavioral of main is
signal s:std_logic;
component openDoor
port(
	clk1 : in std_logic;
	od1 : in std_logic;
	opend1 : out std_logic;
	so1 : in std_logic;
	sc1 : in std_logic;
	s : in std_logic
);
end component;

component closeDoor
port(
		clk1: in std_logic;
		cd1 : in std_logic;
		sc1 : in std_logic;		
		od1 : in std_logic;
		so1 : in std_logic;
		sb1 : in std_logic;
		close1 : out std_logic;
		opend1 : out std_logic
		);
end component;
begin
oppening:openDoor PORT MAP(
		clk1 => clk ,
		od1 => od,
		opend1 => opend,
		so1 => so,
		sc1 => sc,
		s => s
	);

closing : closeDoor port map(
		clk1=>clk,
		cd1=>cd,
		od1 => od,
		sc1=>sc,
		so1=>so,
		sb1=>sb,
		opend1=>s,
		close1 =>close
		);
end Behavioral;