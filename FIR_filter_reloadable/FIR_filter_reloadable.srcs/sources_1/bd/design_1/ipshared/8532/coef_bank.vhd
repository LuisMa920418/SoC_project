
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity coef_bank is
    Generic (
            coef_width : integer := 25;
            nbr_coef : integer := 40;
            log2_nbr_coef : integer := 6
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           coef_data : in STD_LOGIC_VECTOR (coef_width -1 downto 0);
           addr : in STD_LOGIC_VECTOR (log2_nbr_coef -1 downto 0);
           en : in STD_LOGIC;
           dout : out STD_LOGIC_VECTOR (nbr_coef * coef_width -1 downto 0)
           );
end coef_bank;

architecture Structural of coef_bank is
component bank_ctrl is
    Generic (
            nbr_coef : integer := nbr_coef;
            log2_nbr_coef : integer := log2_nbr_coef
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           addr : in STD_LOGIC_VECTOR (log2_nbr_coef -1 downto 0);
           en : in STD_LOGIC;
           en_bus : out STD_LOGIC_VECTOR (nbr_coef -1 downto 0)
           );
end component;
component bank_reg is
    Generic (
            coef_width : integer := coef_width
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (coef_width -1 downto 0);
           Q : out STD_LOGIC_VECTOR (coef_width -1 downto 0));
end component;
signal en_bus: STD_LOGIC_VECTOR (nbr_coef -1 downto 0);
begin
REG: for ii in 0 to nbr_coef-1 generate
    R: bank_reg
        Generic Map(coef_width => coef_width)
        Port Map(
                clk => clk,
                rst => rst,
                en => en_bus(ii),
                D => coef_data,
                Q => dout((ii+1)*coef_width -1 downto ii*coef_width)
                );
end generate REG;

CTRL: component bank_ctrl
    Generic Map(
            nbr_coef => nbr_coef,
            log2_nbr_coef => log2_nbr_coef
            )
    Port Map( 
           clk => clk,
           rst => rst,
           addr => addr,
           en => en,
           en_bus => en_bus
           );

end Structural;
