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
    signal last_vehicle_left : STD_LOGIC := '0';  -- Variable para almacenar el estado anterior de vehicle_left
    signal vehicle_distance : INTEGER := 0;  -- Variable para almacenar la distancia entre vehículos
begin
    process (vehicle_left)
    begin
        if vehicle_left = '1' and last_vehicle_left = '0' then
            -- Vehículo ha abandonado la zona de pago
            safe_distance <= '1';  -- Separación adecuada
            
            -- Por ejemplo, verifica si la distancia entre el vehículo que acaba de salir
            -- y el siguiente vehículo es mayor o igual a MINIMUM_DISTANCE.
            if vehicle_distance < MINIMUM_DISTANCE then
                -- Los vehículos están muy juntos
                safe_distance <= '0';  -- Indica que la separación no es adecuada
            end if;
            
            -- Actualiza la distancia entre vehículos
            vehicle_distance <= 0;
        elsif vehicle_left = '1' and last_vehicle_left = '1' then
            -- El vehículo sigue presente en la zona de pago
            vehicle_distance <= vehicle_distance + 1;  -- Incrementa la distancia entre vehículos
            safe_distance <= '1';  -- Se asume que la separación es adecuada mientras el vehículo siga presente
        else
            -- No se detectó la salida de un vehículo
            safe_distance <= '0';
        end if;
        
        -- Actualiza el estado anterior de vehicle_left
        last_vehicle_left <= vehicle_left;
    end process;
end arch_Back_Sensor;
