----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:16:31 10/28/2014 
-- Design Name: 
-- Module Name:    Idea - Behavioral 
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.ALL;
use IEEE.Numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Idea is
    Port ( a : in  STD_LOGIC_VECTOR (127 downto 0);
           x1 : in  STD_LOGIC_VECTOR (15 downto 0);
           x2 : in  STD_LOGIC_VECTOR (15 downto 0);
           x3 : in  STD_LOGIC_VECTOR (15 downto 0);
           x4 : in  STD_LOGIC_VECTOR (15 downto 0);
           y1 : out  STD_LOGIC_VECTOR (15 downto 0);
           y2 : out  STD_LOGIC_VECTOR (15 downto 0);
           y3 : out  STD_LOGIC_VECTOR (15 downto 0);
           y4 : out  STD_LOGIC_VECTOR (15 downto 0));
end Idea;

architecture Behavioral of Idea is

signal z11: STD_LOGIC_vector(15 downto 0);
signal z21: STD_LOGIC_vector(15 downto 0);
signal z31: STD_LOGIC_vector(15 downto 0);
signal z41: STD_LOGIC_vector(15 downto 0);
signal z51: STD_LOGIC_vector(15 downto 0);
signal z61: STD_LOGIC_vector(15 downto 0);
signal z12: STD_LOGIC_vector(15 downto 0);
signal z22: STD_LOGIC_vector(15 downto 0);
signal z32: STD_LOGIC_vector(15 downto 0);
signal z42: STD_LOGIC_vector(15 downto 0);
signal z52: STD_LOGIC_vector(15 downto 0);
signal z62: STD_LOGIC_vector(15 downto 0);
signal z13: STD_LOGIC_vector(15 downto 0);
signal z23: STD_LOGIC_vector(15 downto 0);
signal z33: STD_LOGIC_vector(15 downto 0);
signal z43: STD_LOGIC_vector(15 downto 0);
signal z53: STD_LOGIC_vector(15 downto 0);
signal z63: STD_LOGIC_vector(15 downto 0);
signal z14: STD_LOGIC_vector(15 downto 0);
signal z24: STD_LOGIC_vector(15 downto 0);
signal z34: STD_LOGIC_vector(15 downto 0);
signal z44: STD_LOGIC_vector(15 downto 0);
signal z54: STD_LOGIC_vector(15 downto 0);
signal z64: STD_LOGIC_vector(15 downto 0);
signal z15: STD_LOGIC_vector(15 downto 0);
signal z25: STD_LOGIC_vector(15 downto 0);
signal z35: STD_LOGIC_vector(15 downto 0);
signal z45: STD_LOGIC_vector(15 downto 0);
signal z55: STD_LOGIC_vector(15 downto 0);
signal z65: STD_LOGIC_vector(15 downto 0);
signal z16: STD_LOGIC_vector(15 downto 0);
signal z26: STD_LOGIC_vector(15 downto 0);
signal z36: STD_LOGIC_vector(15 downto 0);
signal z46: STD_LOGIC_vector(15 downto 0);
signal z56: STD_LOGIC_vector(15 downto 0);
signal z66: STD_LOGIC_vector(15 downto 0);
signal z17: STD_LOGIC_vector(15 downto 0);
signal z27: STD_LOGIC_vector(15 downto 0);
signal z37: STD_LOGIC_vector(15 downto 0);
signal z47: STD_LOGIC_vector(15 downto 0);
signal z57: STD_LOGIC_vector(15 downto 0);
signal z67: STD_LOGIC_vector(15 downto 0);
signal z18: STD_LOGIC_vector(15 downto 0);
signal z28: STD_LOGIC_vector(15 downto 0);
signal z38: STD_LOGIC_vector(15 downto 0);
signal z48: STD_LOGIC_vector(15 downto 0);
signal z58: STD_LOGIC_vector(15 downto 0);
signal z68: STD_LOGIC_vector(15 downto 0);
signal z1y: STD_LOGIC_vector(15 downto 0);
signal z2y: STD_LOGIC_vector(15 downto 0);
signal z3y: STD_LOGIC_vector(15 downto 0);
signal z4y: STD_LOGIC_vector(15 downto 0);
signal o1 : STD_LOGIC_vector(15 downto 0);
signal o2 : STD_LOGIC_vector(15 downto 0);
signal o3 : STD_LOGIC_vector(15 downto 0);
signal o4 : STD_LOGIC_vector(15 downto 0);
signal o5 : STD_LOGIC_vector(15 downto 0);
signal o6 : STD_LOGIC_vector(15 downto 0);
signal o7 : STD_LOGIC_vector(15 downto 0);
signal o8 : STD_LOGIC_vector(15 downto 0);
signal o9 : STD_LOGIC_vector(15 downto 0);
signal o10 : STD_LOGIC_vector(15 downto 0);
signal o11 : STD_LOGIC_vector(15 downto 0);
signal o12 : STD_LOGIC_vector(15 downto 0);
signal o13 : STD_LOGIC_vector(15 downto 0);
signal o14 : STD_LOGIC_vector(15 downto 0);
signal o15 : STD_LOGIC_vector(15 downto 0);
signal o16 : STD_LOGIC_vector(15 downto 0);
signal o17 : STD_LOGIC_vector(15 downto 0);
signal o18 : STD_LOGIC_vector(15 downto 0);
signal o19 : STD_LOGIC_vector(15 downto 0);
signal o20 : STD_LOGIC_vector(15 downto 0);
signal o21 : STD_LOGIC_vector(15 downto 0);
signal o22 : STD_LOGIC_vector(15 downto 0);
signal o23 : STD_LOGIC_vector(15 downto 0);
signal o24 : STD_LOGIC_vector(15 downto 0);
signal o25 : STD_LOGIC_vector(15 downto 0);
signal o26 : STD_LOGIC_vector(15 downto 0);
signal o27 : STD_LOGIC_vector(15 downto 0);
signal o28 : STD_LOGIC_vector(15 downto 0);
signal o29 : STD_LOGIC_vector(15 downto 0);
signal o30 : STD_LOGIC_vector(15 downto 0);
signal o31 : STD_LOGIC_vector(15 downto 0);
signal o32 : STD_LOGIC_vector(15 downto 0);

component round

    Port ( z1 : in  STD_LOGIC_VECTOR (15 downto 0);
           z2 : in  STD_LOGIC_VECTOR (15 downto 0);
           z3 : in  STD_LOGIC_VECTOR (15 downto 0);
           z4 : in  STD_LOGIC_VECTOR (15 downto 0);
           z5 : in  STD_LOGIC_VECTOR (15 downto 0);
           z6 : in  STD_LOGIC_VECTOR (15 downto 0);
           x1 : in  STD_LOGIC_VECTOR (15 downto 0);
           x2 : in  STD_LOGIC_VECTOR (15 downto 0);
           x3 : in  STD_LOGIC_VECTOR (15 downto 0);
           x4 : in  STD_LOGIC_VECTOR (15 downto 0);
           y1 : out  STD_LOGIC_VECTOR (15 downto 0);
           y2 : out  STD_LOGIC_VECTOR (15 downto 0);
           y3 : out  STD_LOGIC_VECTOR (15 downto 0);
           y4 : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component trafo

  Port ( z1 : in  STD_LOGIC_VECTOR(15 downto 0);
           z2 : in  STD_LOGIC_VECTOR(15 downto 0);
           z3 : in  STD_LOGIC_VECTOR(15 downto 0);
           z4 : in  STD_LOGIC_VECTOR(15 downto 0);
           x1 : in  STD_LOGIC_VECTOR(15 downto 0);
           x2 : in  STD_LOGIC_VECTOR(15 downto 0);
           x3 : in  STD_LOGIC_VECTOR(15 downto 0);
           x4 : in  STD_LOGIC_VECTOR(15 downto 0);
           y1 : out  STD_LOGIC_VECTOR(15 downto 0);
           y2 : out  STD_LOGIC_VECTOR(15 downto 0);
           y3 : out  STD_LOGIC_VECTOR(15 downto 0);
           y4 : out  STD_LOGIC_VECTOR(15 downto 0));

end component;

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

b1: round port map (z11,z21,z31,z41,z51,z61,x1,x2,x3,x4,o1,o2,o3,o4);
b2: round port map (z12,z22,z32,z42,z52,z62,o1,o2,o3,o4,o5,o6,o7,o8);
b3: round port map (z13,z23,z33,z43,z53,z63,o5,o6,o7,o8,o9,o10,o11,o12);
b4: round port map (z14,z24,z34,z44,z54,z64,o9,o10,o11,o12,o13,o14,o15,o16);
b5: round port map (z15,z25,z35,z45,z55,z65,o13,o14,o15,o16,o17,o18,o19,o20);
b6: round port map (z16,z26,z36,z46,z56,z66,o17,o18,o19,o20,o21,o22,o23,o24);
b7: round port map (z17,z27,z37,z47,z57,z67,o21,o22,o23,o24,o25,o26,o27,o28);
b8: round port map (z18,z28,z38,z48,z58,z68,o25,o26,o27,o28,o29,o30,o31,o32);
b9: trafo port map (z1y,z2y,z3y,z4y,o29,o30,o31,o32,y1,y2,y3,y4);

end Behavioral;

