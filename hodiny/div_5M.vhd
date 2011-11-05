library ieee; use ieee.std_logic_1164.all; use
ieee.std_logic_unsigned.all;
-- delic 5e6 se symetrickym vystupem
entity delic5M is
port(clk : in std_logic;
	  q : out std_logic);
end entity;

architecture behav1 of delic5M is
constant MAX:integer :=2499999;
begin
	process (clk)
		variable delic2 : std_logic := '0';
		variable cnt : integer:=0;
		begin
		if (clk'event and clk='1') then
			if cnt=MAX then
				cnt:=0; delic2:=not delic2;
			else 
				cnt := cnt + 1;
			end if;
		end if;
		q<=delic2;
	end process;
end behav1;
