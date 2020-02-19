library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dflipflop is
	port (
	
	Clock_In : in std_logic;
	Reset_In : in std_logic;
	D_In		: in std_logic;
	Q_Out		: out std_logic;
	Qn_Out 	: out std_logic);
	
end entity;

architecture dflipflop_arch of dflipflop is 

	begin 
	
	dff : process(Clock_In, Reset_In)
		begin
		if(Reset_In = '0') then
			Q_Out <= '0';
			Qn_Out <= '1';
		elsif(Clock_In'event and Clock_In = '1') then
			Q_Out <= D_In;
			Qn_Out <= NoT D_In; 
		end if; 
		
	
	end process; 


end architecture;