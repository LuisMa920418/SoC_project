---------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.12.2019 16:57:57
-- Design Name: 
-- Module Name: rising_edge_detector - Behavioral
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




-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--rising edge detector in the input named "input"
library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity rising_detector is
  
  port (
    reset  : in  std_logic;             -- reset active in 1
    clk    : in  std_logic;             -- clk
    input  : in  std_logic;             -- input to detect event
    output : out std_logic);  -- output which generate a pulse 1 period clock wide when the event is detected

end rising_detector;
architecture behavioral of rising_detector is
  TYPE State_type IS (S0,S1,S2);        -- possible states in the FSM machine
  signal state, next_state : state_type;  -- signal refered to current and next state

  
begin  -- behavioral

-- purpose: current state register
-- type   : sequential
-- inputs : clk, reset
-- outputs: state
  SYNC_PROCESS : process (clk, reset)
  begin  -- process SYNC_PROCESS
    if reset = '1' then                 -- asynchronous reset (active low)
      state <= S0;
    elsif clk'event and clk = '1' then  -- rising clock edge
      state <= next_state;
    end if;
  end process SYNC_PROCESS;



-- purpose: output decodification logic, mapping between states and output values
-- type   : combinational
-- inputs : state
-- outputs: output
  OUTPUT_DECODE : process (state)
  begin  -- process OUTPUT_DECODE
    case state is
      when S2 =>
        output <= '1';
      when others => output <= '0';
    end case;
  end process OUTPUT_DECODE;




-- purpose: next state decode block
-- type   : combinational
-- inputs : state,input
-- outputs: next_state
  NEXT_STATE_DECODE : process (state, input)
  begin  -- process NEXT_STATE_DECODE
    next_state <= S0;
    case state is
      when S0 =>
        if input = '0' then
          next_state <= S1;
        else
          next_state <= S0;
        end if;
      when S1 =>
        if (input = '1') then
          next_state <= S2;
        else
          next_state <= S1;
        end if;
      when S2 =>
        if input = '0' then
          next_state <= S1;
        else
          next_state <= S0;
        end if;
      when others =>
        next_state <= S0;
    end case;
  end process NEXT_STATE_DECODE;



end behavioral;