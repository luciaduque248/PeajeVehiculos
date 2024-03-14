library ieee;
use ieee.std_logic_1164.all;

entity Front_sensor is
    port (
		  --Entrada
        CLK : in std_logic;              -- Señal de reloj
        --Salida
		  DETECTOR_VEHICULO : out std_logic --Detección de vehículo
    );
end entity Front_sensor;

architecture Front_sensor_Arch of Front_sensor is

    -- Contador de tiempo  
    signal CONTADOR_TIEMPO : integer range 0 to 10 := 0; -- simulacion de detección de vehículo

begin

    -- Proceso de detección de vehículo
    process (CLK)
    begin
        if rising_edge(CLK) then
            if CONTADOR_TIEMPO > 0 then
                CONTADOR_TIEMPO <= CONTADOR_TIEMPO - 1; --Si hay un vehículo detectado deecrementamos el contador 
            end if;

            if CONTADOR_TIEMPO = 0 then
                DETECTOR_VEHICULO <= '1'; -- Emite la señal cuando se detecta el vehículo
            else
                DETECTOR_VEHICULO <= '0'; -- No hay señal si no se detecta un vehículo
            end if;
			end if;
    end process;

end architecture Front_sensor_Arch;
