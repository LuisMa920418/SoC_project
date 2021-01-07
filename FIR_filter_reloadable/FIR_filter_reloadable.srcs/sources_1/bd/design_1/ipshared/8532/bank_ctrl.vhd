
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bank_ctrl is
    Generic (
            nbr_coef : integer := 40;
            log2_nbr_coef : integer := 6
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           addr : in STD_LOGIC_VECTOR (log2_nbr_coef -1 downto 0);
           en : in STD_LOGIC;
           en_bus : out STD_LOGIC_VECTOR (nbr_coef -1 downto 0)
           );
end bank_ctrl;

architecture Behavioral of bank_ctrl is

begin
process (rst, clk, en) begin
if rst = '1' then
    en_bus <= (others => '0');
else
    if rising_edge(clk) then
        if en = '1' and addr < std_logic_vector(to_unsigned(nbr_coef, log2_nbr_coef)) then
            en_bus(to_integer(unsigned(addr))) <= '1';
        else
            en_bus <= (others => 'Z');
        end if;
    end if;
end if;
end process;

end Behavioral;
