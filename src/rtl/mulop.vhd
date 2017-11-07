
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

entity mulop is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end mulop;

architecture Behavioral of mulop is
begin

mulop: process (A,B)

variable A1: STD_LOGIC_VECTOR (16 downto 0);
variable B1: STD_LOGIC_VECTOR (16 downto 0);
variable Result1 : STD_LOGIC_VECTOR (33 downto 0);
variable Remainder : STD_LOGIC_VECTOR (15 downto 0);
variable Dividend : STD_LOGIC_VECTOR (17 downto 0);     --as from 35 to 16
variable Result2 : STD_LOGIC_VECTOR (17 downto 0);

begin

if (A = X"0000") then     --checking the input A is 0 or not 
A1 := '1' & A;
else
A1 := '0' & A;
end if;

if (B = X"0000") then     --checking the input B is 0 or not 
B1 := '1' &B;
else
B1 := '0' &B;
end if;

Result1 := A1 * b1;


Remainder := Result1(15 downto 0);
Dividend  := Result1(33 downto 16);

if (Remainder >= Dividend) then 
Result2 := "00" &Remainder - Dividend;  --So Remainder is greater than Dividend in VALUE, and hence dividend would contain 0 0 0 
else 
Result2 := "00" &Remainder - Dividend + B"010000_0000_0000_0000" + B"00_0000_0000_0000_0001";     --check this 
end if;

--Final Result 
O <= Result2 (15 downto 0);

end process;

end Behavioral;

