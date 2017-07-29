library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity Vhdl3 is
port (
  clk1    : in std_logic;
  clock : out std_logic_vector(3 downto 0)
);
end Vhdl3;
 
architecture Behavioral of Vhdl3 is
  signal sec : integer range 0 to 9 :=0;
  signal count : integer :=1;
  signal clk : std_logic :='0';
begin
  clock <= conv_std_logic_vector(sec,4);
   
  --clk generation.For 100 MHz clock this generates 1 Hz clock.
  process(clk1)
  begin
    if(clk1'event and clk1='1') then
      count <=count+1;
      if(count = 25000000) then
        clk <= not clk;
        count <=1;
      end if;
    end if;
  end process;
 
  process(clk)   --period of clk is 1 second.
  begin
    if(clk'event and clk='1') then
    sec <= sec+ 1;
      if(sec = 2) then
        sec<=4;
    end if;
	 if(sec = 4) then
        sec<=8;
    end if;
	 if(sec =8) then
        sec<=1;
    end if;
	 end if;
  end process;
end Behavioral;