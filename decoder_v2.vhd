-- www.vhdl.com.br
-- Decodificador de BCD para display de 7 segmentos
-- Por Victor Miranda Fernandes
---------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity decoder_v2 is
port(
  pic      : IN BIT_VECTOR(5 DOWNTO 0);
  alu: OUT BIT_VECTOR(5 DOWNTO 0));
end decoder_v2;
 
architecture teste_4 of decoder_v2 is
begin
  WITH pic SELECT
    alu <= "001001" WHEN "000111",
                 "011110" WHEN "000101",
                 "000011" WHEN "000011",
                 "000000" WHEN "001011",
                 "001111" WHEN "001000",
                 "001111" WHEN "000000",
                 "100110" WHEN "000010",
                 "001111" WHEN "110000",
                 "000000" WHEN OTHERS;
end teste_4;