
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
            coef_width : integer := 4;
            nbr_coef : integer := 8;
            log2_nbr_coef : integer := 3
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           coef_data : in STD_LOGIC_VECTOR (coef_width -1 downto 0);
            
           reset_shift_register : in std_logic;
           en : in STD_LOGIC;
           dout : out STD_LOGIC_VECTOR (nbr_coef * coef_width -1 downto 0)
           );
end coef_bank;

architecture Structural of coef_bank is
 component coef_bank_ctrl
    generic (
          log2_nbr_coef   : integer   :=  log2_nbr_coef;
          nbr_coef : integer := nbr_coef
           );
       port (clk                  : in std_logic;
             reset                : in std_logic;
             start                : in std_logic;
              en_reg : out std_logic;
             reset_shift_register : in std_logic;
             en_bus               : out std_logic_vector (nbr_coef-1 downto 0));
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


 signal en_reg : std_logic;
    
signal en_bus,en_bus_2: STD_LOGIC_VECTOR (nbr_coef -1 downto 0);
begin
REG: for ii in 0 to nbr_coef-1 generate
    R: bank_reg
        Generic Map(coef_width => coef_width)
        Port Map(
                clk => clk,
                rst => rst,
                en => en_bus_2(ii),
                D => coef_data,
                Q => dout((ii+1)*coef_width -1 downto ii*coef_width)
                );
end generate REG;

en_bus_2 <= en_bus when en_reg = '1' else (others=>'0');

 ctrl : coef_bank_ctrl
    generic map (nbr_coef => nbr_coef,
                 log2_nbr_coef   =>  log2_nbr_coef )
                 
    port map (clk                  => clk,
              reset                => rst,
              start                => en,
              en_reg => en_reg,
              reset_shift_register => reset_shift_register,
              en_bus               => en_bus);
              
   

end Structural;
