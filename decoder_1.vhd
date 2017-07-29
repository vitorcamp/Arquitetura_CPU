-- www.vhdl.com.br
-- Decodificador de BCD para display de 7 segmentos
-- Por Victor Miranda Fernandes
---------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity decoder_1 is
port(
  inst     : IN BIT_VECTOR(6 DOWNTO 0);
  ativ: OUT BIT_VECTOR(3 DOWNTO 0));
end decoder_1;
 
architecture decodificador of decoder_1 is
begin
  WITH inst SELECT
			ativ <=  "0001" WHEN "0000101",
                 "0010" WHEN "0100000",
                 "0100" WHEN "0100001",
                 "1000" WHEN "0100010",
                 "0000" WHEN OTHERS;
end decodificador;