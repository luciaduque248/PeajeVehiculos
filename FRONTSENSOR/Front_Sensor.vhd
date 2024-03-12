library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Front_Sensor is
    Port ( vehiculoDetectado : in STD_LOGIC;
           tagValido : out STD_LOGIC);
end Front_Sensor;

architecture Behavioral of Front_Sensor is
begin
    process
    begin
        -- Lógica para detectar la llegada de un vehículo y validar la identificación
        
        if vehiculoDetectado = '1' then
            tagValido <= '1'; -- Identificación válida
        else
            tagValido <= '0'; -- Identificación inválida
        end if;
    end process;
end Behavioral;
