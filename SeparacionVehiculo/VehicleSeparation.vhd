-- VehicleSeparation.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VehicleSeparation is
    Port (
        vehicle1_position : in INTEGER range 0 to 100;  -- Posición del primer vehículo (en cm)
        vehicle2_position : in INTEGER range 0 to 100;  -- Posición del segundo vehículo (en cm)
        alert : out STD_LOGIC  -- Salida que indica si se debe activar una alerta
    );
end VehicleSeparation;

architecture Behavioral of VehicleSeparation is
    constant MINIMUM_DISTANCE : INTEGER := 10;  -- Distancia mínima permitida (en cm)
begin
    process (vehicle1_position, vehicle2_position)
    begin
        if abs(vehicle1_position - vehicle2_position) < MINIMUM_DISTANCE then
            -- La distancia entre los vehículos es menor de 10 cm
            alert <= '1';  -- Activa la alerta
        else
            -- La distancia es segura
            alert <= '0';
        end if;
    end process;
end Behavioral;