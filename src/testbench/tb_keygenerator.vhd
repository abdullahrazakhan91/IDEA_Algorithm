
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_keygenerator IS
END tb_keygenerator;
 
ARCHITECTURE behavior OF tb_keygenerator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT keygenerator
    PORT(
         a : IN  std_logic_vector(127 downto 0);
         z11 : OUT  std_logic_vector(15 downto 0);
         z21 : OUT  std_logic_vector(15 downto 0);
         z31 : OUT  std_logic_vector(15 downto 0);
         z41 : OUT  std_logic_vector(15 downto 0);
         z51 : OUT  std_logic_vector(15 downto 0);
         z61 : OUT  std_logic_vector(15 downto 0);
         z12 : OUT  std_logic_vector(15 downto 0);
         z22 : OUT  std_logic_vector(15 downto 0);
         z32 : OUT  std_logic_vector(15 downto 0);
         z42 : OUT  std_logic_vector(15 downto 0);
         z52 : OUT  std_logic_vector(15 downto 0);
         z62 : OUT  std_logic_vector(15 downto 0);
         z13 : OUT  std_logic_vector(15 downto 0);
         z23 : OUT  std_logic_vector(15 downto 0);
         z33 : OUT  std_logic_vector(15 downto 0);
         z43 : OUT  std_logic_vector(15 downto 0);
         z53 : OUT  std_logic_vector(15 downto 0);
         z63 : OUT  std_logic_vector(15 downto 0);
         z14 : OUT  std_logic_vector(15 downto 0);
         z24 : OUT  std_logic_vector(15 downto 0);
         z34 : OUT  std_logic_vector(15 downto 0);
         z44 : OUT  std_logic_vector(15 downto 0);
         z54 : OUT  std_logic_vector(15 downto 0);
         z64 : OUT  std_logic_vector(15 downto 0);
         z15 : OUT  std_logic_vector(15 downto 0);
         z25 : OUT  std_logic_vector(15 downto 0);
         z35 : OUT  std_logic_vector(15 downto 0);
         z45 : OUT  std_logic_vector(15 downto 0);
         z55 : OUT  std_logic_vector(15 downto 0);
         z65 : OUT  std_logic_vector(15 downto 0);
         z16 : OUT  std_logic_vector(15 downto 0);
         z26 : OUT  std_logic_vector(15 downto 0);
         z36 : OUT  std_logic_vector(15 downto 0);
         z46 : OUT  std_logic_vector(15 downto 0);
         z56 : OUT  std_logic_vector(15 downto 0);
         z66 : OUT  std_logic_vector(15 downto 0);
         z17 : OUT  std_logic_vector(15 downto 0);
         z27 : OUT  std_logic_vector(15 downto 0);
         z37 : OUT  std_logic_vector(15 downto 0);
         z47 : OUT  std_logic_vector(15 downto 0);
         z57 : OUT  std_logic_vector(15 downto 0);
         z67 : OUT  std_logic_vector(15 downto 0);
         z18 : OUT  std_logic_vector(15 downto 0);
         z28 : OUT  std_logic_vector(15 downto 0);
         z38 : OUT  std_logic_vector(15 downto 0);
         z48 : OUT  std_logic_vector(15 downto 0);
         z58 : OUT  std_logic_vector(15 downto 0);
         z68 : OUT  std_logic_vector(15 downto 0);
         z1y : OUT  std_logic_vector(15 downto 0);
         z2y : OUT  std_logic_vector(15 downto 0);
         z3y : OUT  std_logic_vector(15 downto 0);
         z4y : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(127 downto 0) := x"000b000c000f000f000f000c000c000c";

 	--Outputs
   signal z11 : std_logic_vector(15 downto 0);
   signal z21 : std_logic_vector(15 downto 0);
   signal z31 : std_logic_vector(15 downto 0);
   signal z41 : std_logic_vector(15 downto 0);
   signal z51 : std_logic_vector(15 downto 0);
   signal z61 : std_logic_vector(15 downto 0);
   signal z12 : std_logic_vector(15 downto 0);
   signal z22 : std_logic_vector(15 downto 0);
   signal z32 : std_logic_vector(15 downto 0);
   signal z42 : std_logic_vector(15 downto 0);
   signal z52 : std_logic_vector(15 downto 0);
   signal z62 : std_logic_vector(15 downto 0);
   signal z13 : std_logic_vector(15 downto 0);
   signal z23 : std_logic_vector(15 downto 0);
   signal z33 : std_logic_vector(15 downto 0);
   signal z43 : std_logic_vector(15 downto 0);
   signal z53 : std_logic_vector(15 downto 0);
   signal z63 : std_logic_vector(15 downto 0);
   signal z14 : std_logic_vector(15 downto 0);
   signal z24 : std_logic_vector(15 downto 0);
   signal z34 : std_logic_vector(15 downto 0);
   signal z44 : std_logic_vector(15 downto 0);
   signal z54 : std_logic_vector(15 downto 0);
   signal z64 : std_logic_vector(15 downto 0);
   signal z15 : std_logic_vector(15 downto 0);
   signal z25 : std_logic_vector(15 downto 0);
   signal z35 : std_logic_vector(15 downto 0);
   signal z45 : std_logic_vector(15 downto 0);
   signal z55 : std_logic_vector(15 downto 0);
   signal z65 : std_logic_vector(15 downto 0);
   signal z16 : std_logic_vector(15 downto 0);
   signal z26 : std_logic_vector(15 downto 0);
   signal z36 : std_logic_vector(15 downto 0);
   signal z46 : std_logic_vector(15 downto 0);
   signal z56 : std_logic_vector(15 downto 0);
   signal z66 : std_logic_vector(15 downto 0);
   signal z17 : std_logic_vector(15 downto 0);
   signal z27 : std_logic_vector(15 downto 0);
   signal z37 : std_logic_vector(15 downto 0);
   signal z47 : std_logic_vector(15 downto 0);
   signal z57 : std_logic_vector(15 downto 0);
   signal z67 : std_logic_vector(15 downto 0);
   signal z18 : std_logic_vector(15 downto 0);
   signal z28 : std_logic_vector(15 downto 0);
   signal z38 : std_logic_vector(15 downto 0);
   signal z48 : std_logic_vector(15 downto 0);
   signal z58 : std_logic_vector(15 downto 0);
   signal z68 : std_logic_vector(15 downto 0);
   signal z1y : std_logic_vector(15 downto 0);
   signal z2y : std_logic_vector(15 downto 0);
   signal z3y : std_logic_vector(15 downto 0);
   signal z4y : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: keygenerator PORT MAP (
          a => a,
          z11 => z11,
          z21 => z21,
          z31 => z31,
          z41 => z41,
          z51 => z51,
          z61 => z61,
          z12 => z12,
          z22 => z22,
          z32 => z32,
          z42 => z42,
          z52 => z52,
          z62 => z62,
          z13 => z13,
          z23 => z23,
          z33 => z33,
          z43 => z43,
          z53 => z53,
          z63 => z63,
          z14 => z14,
          z24 => z24,
          z34 => z34,
          z44 => z44,
          z54 => z54,
          z64 => z64,
          z15 => z15,
          z25 => z25,
          z35 => z35,
          z45 => z45,
          z55 => z55,
          z65 => z65,
          z16 => z16,
          z26 => z26,
          z36 => z36,
          z46 => z46,
          z56 => z56,
          z66 => z66,
          z17 => z17,
          z27 => z27,
          z37 => z37,
          z47 => z47,
          z57 => z57,
          z67 => z67,
          z18 => z18,
          z28 => z28,
          z38 => z38,
          z48 => z48,
          z58 => z58,
          z68 => z68,
          z1y => z1y,
          z2y => z2y,
          z3y => z3y,
          z4y => z4y
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
  -- end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
