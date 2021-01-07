----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2020 12:59:32 PM
-- Design Name: 
-- Module Name: shift_register - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;




entity shift_register is
  generic (
 width   : integer   :=  3 );
  port (
    clk           : in  std_logic;
    reset         : in  std_logic;
    enable        : in  std_logic;
    parallel_out      : out std_logic_vector (width-1 downto 0)
  );
end entity shift_register;

architecture behavioral of shift_register is
    signal temp_reg: std_logic_vector(width downto 0) := (Others => '0');
    signal parallel_in : std_logic_vector(width downto 0) := (Others => '0');

    
  begin
    parallel_in <= Std_logic_vector(To_unsigned(1,width+1));

    serial_shift_proc: process(clk, reset,enable) 
   

    begin
      if (reset = '1') then
        temp_reg <= parallel_in;   
        

      elsif rising_edge(clk) and enable = '1'  then
      
        temp_reg <=temp_reg(width-1 downto 0)&'0';
        
      end if;
    end process serial_shift_proc;
    parallel_out<= temp_reg(width downto 1);
  end behavioral;
