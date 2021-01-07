
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FIR is
    Generic (
            sig_width : integer := 3;
            coef_width : integer := 3;
            nbr_coef : integer := 8;
            log2_nbr_coef : integer := 3
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           sig_in : in STD_LOGIC_VECTOR (sig_width -1 downto 0);
           coef : in STD_LOGIC_VECTOR (coef_width * nbr_coef -1 downto 0);
           sig_out : out STD_LOGIC_VECTOR (sig_width + coef_width + log2_nbr_coef -1 downto 0)
           );
end FIR;

architecture Structural of FIR is
component FIR_block_V2 is
    Generic(
            sig_width : integer := sig_width;
            coef_width : integer := coef_width;
              log2_nbr_coef : integer := log2_nbr_coef
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (sig_width -1 downto 0);
           mulA : in STD_LOGIC_VECTOR (coef_width -1 downto 0);
           addA : in STD_LOGIC_VECTOR (sig_width + coef_width + log2_nbr_coef -1 downto 0);
           addOut : out STD_LOGIC_VECTOR (sig_width + coef_width + log2_nbr_coef -1 downto 0);
           Q : out STD_LOGIC_VECTOR (sig_width -1 downto 0)
           );
end component;
type xn_array is array (0 to nbr_coef) of std_logic_vector(sig_width -1 downto 0);
type add_array is array (0 to nbr_coef) of std_logic_vector(sig_width + coef_width + log2_nbr_coef -1 downto 0);
signal xn : xn_array;
signal add_bus: add_array;



begin
xn(0) <= sig_in;
add_bus(0) <= (others => '0');
FB: for ii in 0 to nbr_coef -1 generate
--    ZERO: if ii = 0 generate
        B: FIR_block_V2
    Generic Map(
                sig_width => sig_width,
                coef_width => coef_width,
                log2_nbr_coef=>log2_nbr_coef
                )
    Port Map( clk => clk, 
           rst => rst,
           en => en,
           D => xn(ii),
           mulA => coef((ii+1)*coef_width -1 downto ii*coef_width),
           addA => add_bus(ii),
           addOut => add_bus(ii+1),
           Q => xn(ii+1)
           );
--    end generate ZERO;
--    MID: if ii > 0 AND ii < nbr_coef -1 generate
        
--    end generate MID;
--    TOP: if ii = nbr_coef -1 generate
        
--    end generate TOP;
end generate FB;

sig_out <= add_bus(nbr_coef);
end Structural;
