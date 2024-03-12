library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Back_Sensor is
    Port (
        vehicle_left : in STD_LOGIC;  -- Señal que indica que un vehículo ha abandonado la zona de pago
        safe_distance : out STD_LOGIC  -- Salida que indica si la separación entre vehículos es adecuada
    );
end Back_Sensor;

architecture arch_Back_Sensor of Back_Sensor is
    constant MINIMUM_DISTANCE : INTEGER := 10;  -- Distancia mínima permitida (en cm)
begin
    process (vehicle_left)
    begin
        if vehicle_left = '1' then
            -- Vehículo ha abandonado la zona de pago
            safe_distance <= '1';  -- Separación adecuada
            
            -- Implementa aquí la lógica para garantizar una separación adecuada
            -- entre vehículos en la salida.
            -- Por ejemplo, verifica si la distancia entre el vehículo que acaba de salir
            -- y el siguiente vehículo es mayor o igual a MINIMUM_DISTANCE.
        else
            -- No se detectó la salida de un vehículo
            safe_distance <= '0';
        end if;
    end process;
end arch_Back_Sensor;