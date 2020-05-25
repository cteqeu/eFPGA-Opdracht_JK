library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity IP_Rotary is
  Port ( 
    RT1, RT2 : in std_logic;
    ROT_VAL : out std_logic_vector(1 downto 0)
  );
end IP_Rotary;

architecture Behavioral of IP_Rotary is
begin
   -- process(RT1, RT2)
   --begin
        --if(RT1'event andOR RT2'event) then
           ROT_VAL <= (RT1 & RT2);
        --end if;
    --end process;
end Behavioral;
