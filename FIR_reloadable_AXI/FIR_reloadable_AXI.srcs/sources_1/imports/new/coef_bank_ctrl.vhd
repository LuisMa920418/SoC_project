----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2020 01:33:23 PM
-- Design Name: 
-- Module Name: coef_bank_ctrl - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity coef_bank_ctrl is
    generic (
        log2_nbr_coef   : integer   :=  3;
        nbr_coef : integer := 8
         );
         port (
    clk           : in  std_logic;
    reset         : in  std_logic;
    en_reg : out std_logic;
    start : in std_logic;
    reset_shift_register : in std_logic;
    en_bus      : out std_logic_vector (nbr_coef-1 downto 0)
  );
end coef_bank_ctrl;

architecture Behavioral of coef_bank_ctrl is
 component flip_flop
       port (clk : in std_logic;
             rst : in std_logic;
             q   : out std_logic;
             d   : in std_logic);
   end component;
     component shift_register
     generic (
  width   : integer   :=  nbr_coef);
       port (clk          : in std_logic;
             reset        : in std_logic;
             enable       : in std_logic;
             parallel_out : out std_logic_vector (nbr_coef-1 downto 0));
   end component;

  component rising_detector
  port (reset  : in std_logic;
        clk    : in std_logic;
        input  : in std_logic;
        output : out std_logic);
end component;


signal enable_detected,reset_shift_register_s,FF_out  : std_logic;

begin
    rise_detector : rising_detector
    port map (reset  => reset,
              clk    => clk,
              input  => start,
              output => enable_detected);


                       dut : shift_register
                    generic map (width => nbr_coef)
                    port map (clk          => clk,
                                reset        => reset_shift_register_s,
                                enable       => enable_detected,
                                parallel_out => en_bus);


reset_shift_register_s <= reset_shift_register or reset;


  delay : flip_flop
    port map (clk => clk,
              rst => reset,
              q   => FF_out,
              d   => enable_detected);
en_reg <= FF_out;
end Behavioral;
