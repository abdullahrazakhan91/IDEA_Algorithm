-
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity trafo is
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
end trafo;

architecture Behavioral of trafo is

component addop

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

I1: mulop port map (x1,z1,y1);
I2: addop port map (x2,z3,y3);
I3: addop port map (x3,z2,y2);
I4: mulop port map (x4,z4,y4);

end Behavioral;

