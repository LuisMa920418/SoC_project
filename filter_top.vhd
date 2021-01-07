
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity filter_top is
    Generic (
            sig_width : integer := 4;
            coef_width : integer := 3;
            nbr_coef : integer := 5;
            log2_nbr_coef : integer := 3
            );
   port (clk                  : in std_logic;
                          rst                  : in std_logic;
                          sig_in               : in std_logic_vector (sig_width -1 downto 0);
                          en1                  : in std_logic;
                          coef_data            : in std_logic_vector (coef_width -1 downto 0);
                          en2                : in std_logic;
                          reset_shift_register : in std_logic;
                          sig_out              : out std_logic_vector (sig_width + coef_width + log2_nbr_coef -1 downto 0));
             
end filter_top;

architecture Structural of filter_top is
component FIR is
    Generic (
        
    
    nbr_coef : integer := nbr_coef;
           sig_width : integer := sig_width;
                coef_width : integer := coef_width;
                log2_nbr_coef : integer := log2_nbr_coef
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           sig_in : in STD_LOGIC_VECTOR (sig_width -1 downto 0);
           coef : in STD_LOGIC_VECTOR (coef_width * nbr_coef -1 downto 0);
           sig_out : out STD_LOGIC_VECTOR (coef_width + sig_width + log2_nbr_coef -1 downto 0)
           );
end component;


component coef_bank is
    Generic (
            log2_nbr_coef : integer := log2_nbr_coef;
            coef_width : integer := coef_width;
            nbr_coef : integer := nbr_coef
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           coef_data : in STD_LOGIC_VECTOR (coef_width -1 downto 0);
            en : in STD_LOGIC;
           reset_shift_register : in std_logic;
           dout : out STD_LOGIC_VECTOR (nbr_coef * coef_width -1 downto 0)
           );
end component;
  component rising_detector
port (reset  : in std_logic;
      clk    : in std_logic;
      input  : in std_logic;
      output : out std_logic);
end component;

signal coef_bus : STD_LOGIC_VECTOR (nbr_coef * coef_width -1 downto 0);
signal ff1_q : STD_LOGIC;
signal enable_detected : STD_LOGIC;
begin
FIR1: component FIR 
    Generic Map(        
           nbr_coef => nbr_coef,
            sig_width => sig_width,
            coef_width => coef_width,
           log2_nbr_coef  => log2_nbr_coef)
    Port Map( 
           clk => clk,
           rst => rst,
           en => enable_detected,
           sig_in => sig_in,
           coef => coef_bus,
           sig_out => sig_out
           );

BANK1: coef_bank
    Generic Map(
            nbr_coef => nbr_coef,
            log2_nbr_coef => log2_nbr_coef,
            coef_width => coef_width
            )
    Port Map( clk => clk,
           rst => rst,
           coef_data => coef_data,
             en => en2,
            reset_shift_register =>reset_shift_register,
           dout => coef_bus
           );
           
      rise_detector : rising_detector
               port map (reset  => rst,
                         clk    => clk,
                         input  => en1,
                         output => enable_detected);     
           



end Structural;
