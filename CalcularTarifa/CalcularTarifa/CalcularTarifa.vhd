--calculacoin de tarifa
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CalcularTarifa is
    Port (
        categoria_vehiculo : in STD_LOGIC_VECTOR(2 downto 0);  -- Categoría del vehículo
        tarifa :  out INTEGER range 0 to 4  -- Tarifa calculada 
    );           
end CalcularTarifa;

architecture Behavioral of CalcularTarifa is
 
	 constant Cat1 : INTEGER := 1;  
    constant Cat2 : INTEGER := 2; 
    constant Cat3 : INTEGER := 4; 
begin
    process (categoria_vehiculo)
    begin
        case categoria_vehiculo is
            when "000" =>
                tarifa <= Cat1;
            when "001" =>
                tarifa <= Cat2;
            when "010" =>
                tarifa <= Cat3;
            when others =>
                -- No hay vehículo detectado
                tarifa <= 0;
        end case;
    end process;
end Behavioral;
