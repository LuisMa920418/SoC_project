
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FIR_block_V2 is
    Generic(
            sig_width : integer := 3;
            coef_width : integer := 3;
            log2_nbr_coef : integer := 3
            );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (sig_width -1 downto 0);
           mulA : in STD_LOGIC_VECTOR (coef_width -1 downto 0);
           addA : in STD_LOGIC_VECTOR (sig_width + coef_width + log2_nbr_coef-1 downto 0);
           addOut : out STD_LOGIC_VECTOR (sig_width + coef_width + log2_nbr_coef -1 downto 0);
           Q : out STD_LOGIC_VECTOR (sig_width -1 downto 0));
end FIR_block_V2;

architecture Behavioral of FIR_block_V2 is
--signal addOut_buf : signed (sig_width + coef_width + log2_nbr_coef -1 downto 0);
--signal Q_buf : STD_LOGIC_VECTOR (sig_width -1 downto 0);
--begin
--process (rst, clk, en, D) begin
--if rst = '1' then
--    Q_buf <= (others => '0');
--    addOut_buf <= (others => '0');
--else
--    if rising_edge(clk) then
--        if en = '1' then
--            Q_buf <= D;
--            addOut_buf <= (signed(mulA)* signed(D)) + signed(addA);
--        else
--            Q_buf <= Q_buf;
--            addOut_buf <= addOut_buf;
--        end if; 
--    end if;
--end if;
--end process;
--Q <= Q_buf;
--addOut <= std_logic_vector(addOut_buf);



-- THIS PART TRIES TO INCREASE THE AMOUNT OF COMBINATIONAL COMPONENTS
signal mul_intermediate : signed (coef_width + sig_width -1 downto 0);
signal mulOut : signed (coef_width + sig_width + log2_nbr_coef -1 downto 0);
signal Q_buf : signed (sig_width -1 downto 0);
begin
process (rst, clk, en, D) begin
if rst = '1' then
    Q_buf <= (others => '0');
else
    if rising_edge(clk) then
        if en = '1' then
            Q_buf <= signed(D);
        else
            Q_buf <= Q_buf;
        end if; 
    end if;
end if;
end process;

Q <= Std_logic_vector(Q_buf);
mul_intermediate <= Signed(mulA) * Signed(D);
-- this next line pads the top bits of mulOut with the MSB of mul_intermediate to keep the signed value for the signed addOut
mulOut <= (coef_width + sig_width + log2_nbr_coef -1 downto coef_width + sig_width => mul_intermediate(mul_intermediate'left)) & mul_intermediate;
addOut <= Std_logic_vector(Signed(mulOut) + Signed(addA));



end Behavioral;
