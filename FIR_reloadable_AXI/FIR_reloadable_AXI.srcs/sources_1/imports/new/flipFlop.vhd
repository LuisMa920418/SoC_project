library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flip_flop is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           q : out STD_LOGIC;
           d : in STD_LOGIC);
end flip_flop;

architecture Behavioral of flip_flop is

begin
process(clk,rst)
begin
if(rst = '1') then
q <= '0';
elsif(rising_edge(clk)) then
    q <= d;
end if;
end process;

end Behavioral;