library ieee;
use ieee.std_logic_1164.all;

entity track_sensor is
    port (
        clk : in std_logic;            -- Entrada de reloj
        sensor_in : in std_logic;      -- Señal del sensor de pista
        vehiculo_detectado : out std_logic  -- Salida indicando la detección de un vehículo
    );
end track_sensor;

architecture track_sensor_arch of track_sensor is
    signal estado_sensor : std_logic := '0';  -- Estado interno del sensor (activo bajo)
    constant THRESHOLD : integer := 10;  -- Umbral de detección de vehículo
	 signal contadorTrack : integer := 0; 
	 
begin
    -- Proceso para detectar cambios en la señal del sensor de pista
    process(clk)
    begin
        if rising_edge(clk) then
            -- Si el sensor de pista detecta un vehículo (se activa a bajo)
            if sensor_in = '0' then
                estado_sensor <= '1';  -- El sensor está activo
            else
                estado_sensor <= '0';  -- El sensor no detecta vehículo
            end if;
            
            -- Contador para asegurar que la detección sea estable
            if estado_sensor = '1' then
                if contadorTrack = THRESHOLD then
                    vehiculo_detectado <= '1';  -- Se indica que se ha detectado un vehículo
                else
                    contadorTrack <= contadorTrack + 1;
                end if;
            else
                contadorTrack <= 0;  -- Reiniciar contador si no hay detección
            end if;
        end if;
    end process;

end track_sensor_arch;
