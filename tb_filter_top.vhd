
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_filter_top is
Generic (
            sig_width : integer := 18;
            coef_width : integer := 25;
            nbr_coef : integer := 40;
            log2_nbr_coef : integer := 6
            );
--  Port ( );
end tb_filter_top;

architecture Behavioral of tb_filter_top is
component filter_top is
    Generic (
            sig_width : integer := sig_width;
            coef_width : integer := coef_width;
            nbr_coef : integer := nbr_coef;
            log2_nbr_coef : integer := log2_nbr_coef
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           sig_in : in STD_LOGIC_VECTOR (sig_width -1 downto 0);
           en1 : in STD_LOGIC;
           coef_data : in STD_LOGIC_VECTOR (coef_width -1 downto 0);
           addr : in STD_LOGIC_VECTOR (log2_nbr_coef -1 downto 0);
           en2 : in STD_LOGIC;
           sig_out : out STD_LOGIC_VECTOR (sig_width + coef_width + log2_nbr_coef -1 downto 0)  -- 49 bits, the max possible at the end of the FIR series
           );
end component;
signal clk : STD_LOGIC := '0';
signal rst : STD_LOGIC := '1';
signal sig_in : STD_LOGIC_VECTOR (sig_width -1 downto 0);
signal en1 : STD_LOGIC;
signal coef_data : STD_LOGIC_VECTOR (coef_width -1 downto 0);
signal addr : STD_LOGIC_VECTOR (log2_nbr_coef -1 downto 0) := "000000";
signal en2 : STD_LOGIC;
signal sig_out : STD_LOGIC_VECTOR (sig_width + coef_width + log2_nbr_coef -1 downto 0);
signal index : integer range 0 to 40;
begin
UUT: filter_top
    Generic Map (
            sig_width => sig_width,
            coef_width => coef_width,
            nbr_coef => nbr_coef,
            log2_nbr_coef => log2_nbr_coef
            )
    Port Map( 
           clk => clk,
           rst => rst,
           sig_in => sig_in,
           en1 => en1,
           coef_data => coef_data,
           addr => addr,
           en2 => en2,
           sig_out => sig_out
           );
clk <= not clk after 5 ns;

--index <= index + 1 when en1 = '1' else index;

process begin
wait for 5 ns; 
rst <= '0';
wait for 10 ns;
sig_in <= (sig_width-1 downto 2 => '0') & "11";
en2 <= '1';
wait for 20 ns;
for ii in 0 to nbr_coef-1 loop
    addr <= std_logic_vector(unsigned(addr) + 1);
    if ii < 10 then
        coef_data <= (coef_width -1 downto 3 => '0') & "001";
    elsif ii >= 10 and ii < 20 then
        coef_data <= (coef_width -1 downto 4 => '0') & "0111";
    elsif ii >= 20 and ii <30 then
        coef_data <= (coef_width -1 downto 4 => '0') & "1011";
    elsif ii >=30 then
        coef_data <= (coef_width -1 downto 4 => '0') & "1101";
    end if;
    wait for 10 ns;
end loop;
en2 <= '0';
wait for 50 ns;

en1 <= '1';
wait for 10 ns;

--en1 <= '0';
--wait for 100 ns;
--en1 <= '1';
--wait for 10 ns;
--en1 <= '0';
--wait for 100 ns;
--en1 <= '1';
--wait for 10 ns;
--en1 <= '0';
--wait for 100 ns;

wait for 500 ns;

wait;
end process;
end Behavioral;
