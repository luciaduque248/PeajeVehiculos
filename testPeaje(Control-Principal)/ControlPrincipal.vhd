library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlPrincipal is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           vehicle_detected_front : in STD_LOGIC; -- Sensor delantero detecta vehículo
           vehicle_detected_back : in STD_LOGIC;  -- Sensor trasero detecta vehículo
           identification_valid : in STD_LOGIC;   -- Validación de identificación del vehículo
           barrier_closed : out STD_LOGIC;        -- Barrera cerrada de entrada
           semaforo_entrada : out STD_LOGIC_VECTOR(1 downto 0); -- Semáforo de entrada
           semaforo_salida : out STD_LOGIC_VECTOR(1 downto 0);  -- Semáforo de salida
           talanquera_inicial : out STD_LOGIC;    -- Talanquera inicial
           talanquera_final : out STD_LOGIC;      -- Talanquera final
           display_data : out STD_LOGIC_VECTOR(6 downto 0); -- Datos para el display de 7 segmentos
           green_led : out STD_LOGIC;             -- LED verde
           red_led : out STD_LOGIC;               -- LED rojo
           alarm : out STD_LOGIC);                -- Alarma
end ControlPrincipal;

architecture arch_ControlPrincipal of ControlPrincipal is
    begin
end arch_ControlPrincipal;