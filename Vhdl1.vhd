library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Vhdl1 is
port(
  IR      : IN BIT_VECTOR(6 DOWNTO 0);
  PIC2: OUT BIT_VECTOR(6 DOWNTO 0));
end Vhdl1;
 
architecture decod of Vhdl1 is
begin
  WITH IR SELECT
    PIC2 <= 			
	 
      	             "0110000" WHEN "0100000", --bcf
							 "0110000" WHEN "0100001",
							 "0110000" WHEN "0100010"	,	          
							 "0110000" WHEN "0100011",
							 "0110000" WHEN "0100100",
							 "0110000" WHEN "0100101",
							 "0110000" WHEN "0100110",
							 "0110000" WHEN "0100111",
							 
							 "1010000" WHEN "0101000" ,--bsf
							 "1010000" WHEN "0101001",
							 "1010000" WHEN "0101010",
							 "1010000" WHEN "0101011",
							 "1010000" WHEN "0101100",
							 "1010000" WHEN "0101101",
							 "1010000" WHEN "0101110",
							 "1010000" WHEN "0101111",
							 
							 "0001001" WHEN "0010000" ,--movfw
							 
							 "0010100" WHEN "0000001"  ,--movwf
							 
							 "0000101" WHEN "1100000"	,--movlw
							 "0000101" WHEN "1100001",
							 
							 "0001001" WHEN "0001110"	,     --addwf.W
							 "0011010" WHEN  "0001111"  ,    --addwf.F
							 
							 "0001001" WHEN  "0000100"	  ,   --subwf.W
							 "0011010" WHEN  "0000101"    ,  --subwf.F
							 
							 "0001001" WHEN  "0000110"  ,    --decf.W					 
							 "0011010" WHEN  "0000111"   ,   --decf.F
							 
							 "0001001" WHEN  "0010100"  ,    --incf.W					 
							 "0011010" WHEN  "0010101"   ,   --incf.F
						
						    "0000110" WHEN  "0000000"    ,  --rst
						  
	 
                      "0000000" WHEN OTHERS;
end decod;