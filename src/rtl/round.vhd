
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity round is
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
end round;

architecture Behavioral of round is
signal f1 : STD_LOGIC_vector(15 downto 0);
signal f2 : STD_LOGIC_vector(15 downto 0);
signal f3 : STD_LOGIC_vector(15 downto 0);
signal f4 : STD_LOGIC_vector(15 downto 0);
signal f5 : STD_LOGIC_vector(15 downto 0);
signal f6 : STD_LOGIC_vector(15 downto 0);
signal f7 : STD_LOGIC_vector(15 downto 0);
signal f8 : STD_LOGIC_vector(15 downto 0);
signal f9 : STD_LOGIC_vector(15 downto 0);
signal f10 : STD_LOGIC_vector(15 downto 0);

component addop
Port ( x : in  STD_LOGIC_VECTOR (15 downto 0);
           z : in  STD_LOGIC_VECTOR (15 downto 0);
           y : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component xorop 
  Port ( x : in  STD_LOGIC_VECTOR (15 downto 0);
           z : in  STD_LOGIC_VECTOR (15 downto 0);
           y : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component mulop 
   Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

begin

I1: mulop port map (x1,z1,f1);
I2: addop port map (x2,z2,f2);
I3: addop port map (x3,z3,f3);
I4: mulop port map (x4,z4,f4);
I5: xorop port map (f1,f3,f5);
I6: xorop port map (f2,f4,f6);
I7: mulop port map (f5,z5,f7);
I8: addop port map (f6,f7,f8);
I9: addop port map (f7,f10,f9);
I10: mulop port map (f8,z6,f10);
I11: xorop port map (f1,f10,y1);
I12: xorop port map (f3,f10,y2);
I13: xorop port map (f2,f9,y3);
I14: xorop port map (f4,f9,y4);
end Behavioral;

