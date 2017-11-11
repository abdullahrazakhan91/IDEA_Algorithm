----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:36 10/28/2014 
-- Design Name: 
-- Module Name:    keygenerator - Behavioral 
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity keygenerator is
    Port ( a : in  STD_LOGIC_VECTOR (127 downto 0);
           z11 : out  STD_LOGIC_VECTOR (15 downto 0);
           z21 : out  STD_LOGIC_VECTOR (15 downto 0);
           z31 : out  STD_LOGIC_VECTOR (15 downto 0);
           z41 : out  STD_LOGIC_VECTOR (15 downto 0);
           z51 : out  STD_LOGIC_VECTOR (15 downto 0);
           z61 : out  STD_LOGIC_VECTOR (15 downto 0);
           z12 : out  STD_LOGIC_VECTOR (15 downto 0);
           z22 : out  STD_LOGIC_VECTOR (15 downto 0);
           z32 : out  STD_LOGIC_VECTOR (15 downto 0);
           z42 : out  STD_LOGIC_VECTOR (15 downto 0);
           z52 : out  STD_LOGIC_VECTOR (15 downto 0);
           z62 : out  STD_LOGIC_VECTOR (15 downto 0);
           z13 : out  STD_LOGIC_VECTOR (15 downto 0);
           z23 : out  STD_LOGIC_VECTOR (15 downto 0);
           z33 : out  STD_LOGIC_VECTOR (15 downto 0);
           z43 : out  STD_LOGIC_VECTOR (15 downto 0);
           z53 : out  STD_LOGIC_VECTOR (15 downto 0);
           z63 : out  STD_LOGIC_VECTOR (15 downto 0);
           z14 : out  STD_LOGIC_VECTOR (15 downto 0);
           z24 : out  STD_LOGIC_VECTOR (15 downto 0);
           z34 : out  STD_LOGIC_VECTOR (15 downto 0);
           z44 : out  STD_LOGIC_VECTOR (15 downto 0);
           z54 : out  STD_LOGIC_VECTOR (15 downto 0);
           z64 : out  STD_LOGIC_VECTOR (15 downto 0);
           z15 : out  STD_LOGIC_VECTOR (15 downto 0);
           z25 : out  STD_LOGIC_VECTOR (15 downto 0);
           z35 : out  STD_LOGIC_VECTOR (15 downto 0);
           z45 : out  STD_LOGIC_VECTOR (15 downto 0);
           z55 : out  STD_LOGIC_VECTOR (15 downto 0);
           z65 : out  STD_LOGIC_VECTOR (15 downto 0);
           z16 : out  STD_LOGIC_VECTOR (15 downto 0);
           z26 : out  STD_LOGIC_VECTOR (15 downto 0);
           z36 : out  STD_LOGIC_VECTOR (15 downto 0);
           z46 : out  STD_LOGIC_VECTOR (15 downto 0);
           z56 : out  STD_LOGIC_VECTOR (15 downto 0);
           z66 : out  STD_LOGIC_VECTOR (15 downto 0);
           z17 : out  STD_LOGIC_VECTOR (15 downto 0);
           z27 : out  STD_LOGIC_VECTOR (15 downto 0);
           z37 : out  STD_LOGIC_VECTOR (15 downto 0);
           z47 : out  STD_LOGIC_VECTOR (15 downto 0);
           z57 : out  STD_LOGIC_VECTOR (15 downto 0);
           z67 : out  STD_LOGIC_VECTOR (15 downto 0);
           z18 : out  STD_LOGIC_VECTOR (15 downto 0);
           z28 : out  STD_LOGIC_VECTOR (15 downto 0);
           z38 : out  STD_LOGIC_VECTOR (15 downto 0);
           z48 : out  STD_LOGIC_VECTOR (15 downto 0);
           z58 : out  STD_LOGIC_VECTOR (15 downto 0);
           z68 : out  STD_LOGIC_VECTOR (15 downto 0);
           z1y : out  STD_LOGIC_VECTOR (15 downto 0);
           z2y : out  STD_LOGIC_VECTOR (15 downto 0);
           z3y : out  STD_LOGIC_VECTOR (15 downto 0);
           z4y : out  STD_LOGIC_VECTOR (15 downto 0));
end keygenerator;

architecture Behavioral of keygenerator is

begin


z11 <= a(127 downto 112);
z21 <= a(111 downto 96);
z31 <= a(95 downto 80);
z41 <= a(79 downto 64);
z51 <= a(63 downto 48);
z61 <= a(47 downto 32);
z12 <= a(31 downto 16);
z22 <= a(15 downto 0);
z32 <= a(102 downto 87);
z42 <= a(86 downto 71);
z52 <= a(70 downto 55);
z62 <= a(54 downto 39);
z13 <= a(38 downto 23);
z23 <= a(22 downto 7);
z33 <= a(6 downto 0) & a(127 downto 119);
z43 <= a(118 downto 103);
z53 <= a(77 downto 62);
z63 <= a(61 downto 46);
z14 <= a(45 downto 30);
z24 <= a(29 downto 14);
z34 <= a(13 downto 0) & a(127 downto 126);
z44 <= a(125 downto 110);
z54 <= a(109 downto 94);
z64 <= a(93 downto 78);
z15 <= a(52 downto 37);
z25 <= a(36 downto 21);
z35 <= a(20 downto 5);
z45 <= a(4 downto 0) & a(127 downto 117);
z55 <= a(116 downto 101);
z65 <= a(100 downto 85);
z16 <= a(84 downto 69);
z26 <= a(68 downto 53);
z36 <= a(27 downto 12);
z46 <= a(11 downto 0) & a(127 downto 124);
z56 <= a(123 downto 108);
z66 <= a(107 downto 92);
z17 <= a(91 downto 76);
z27 <= a(75 downto 60);
z37 <= a(59 downto 44);
z47 <= a(43 downto 28);
z57 <= a(2 downto 0) & a(127 downto 115);
z67 <= a(114 downto 99);
z18 <= a(98 downto 83);
z28 <= a(82 downto 67);
z38 <= a(66 downto 51);
z48 <= a(50 downto 35);
z58 <= a(34 downto 19);
z68 <= a(18 downto 3);
z1y <= a(105 downto 90);
z2y <= a(89 downto 74);
z3y <= a(73 downto 58);
z4y <= a(57 downto 42);

end Behavioral;

