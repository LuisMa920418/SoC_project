
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bank_reg is
    Generic (
            coef_width : integer := 25
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (coef_width -1 downto 0);
           Q : out STD_LOGIC_VECTOR (coef_width -1 downto 0));
end bank_reg;

architecture Behavioral of bank_reg is
signal Q_buf : STD_LOGIC_VECTOR (coef_width -1 downto 0);
begin
Q_buf <= (others => '0') when rst = '1' else
     D when en = '1' and rising_edge(clk) else Q_buf;
 Q <= Q_buf;

end Behavioral;
