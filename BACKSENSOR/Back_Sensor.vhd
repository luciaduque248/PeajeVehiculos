library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Back_Sensor is
    Port ( vehicle_detected : in STD_LOGIC;
           back_sensor_active : out STD_LOGIC);
end Back_Sensor;

architecture arch_Back_Sensor of Back_Sensor is
begin
    process(vehicle_detected)
    begin
        -- Lógica para detectar la presencia de un vehículo en la zona trasera
        -- Puedes adaptar esta lógica según tus necesidades específicas
        if vehicle_detected = '1' then
            back_sensor_active <= '1'; -- Sensor trasero activo
        else
            back_sensor_active <= '0'; -- Sensor trasero inactivo
        end if;
    end process;
end arch_Back_Sensor;
