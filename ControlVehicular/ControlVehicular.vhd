library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControlVehicular is
    port (
        -- entradas
        CLK: in std_logic;                   -- Señal de reloj
        REINICIO: in std_logic;              -- Señal de reinicio
        DETECTOR_VEHICULO: in std_logic;     -- Señal que indica la detección de un vehículo
        ABRIR_TALANQUERA : in std_logic;     -- Señal que indica si la barrera está abierta
        SALIDA_SEMAFORO_VERDE : in std_logic;-- Señal que indica el estado verde del semáforo de salida
        
        -- salidas
        CONTADOR_VEHICULAR : out unsigned(7 downto 0);           -- Contador de vehículos
        TIEMPODEPASOVEHICULAR : out unsigned(15 downto 0);      -- Tiempo de paso del vehículo
        TALANQUERA_CERRADA_TIEMPO : out unsigned(15 downto 0)   -- Tiempo en que se cerró la barrera
    );
end entity ControlVehicular;

architecture ControlVehicular_arch of ControlVehicular is

    -- Definir constantes para el período del reloj y el tiempo de paso del vehículo
    constant PERIODO_RELOJ : time := 10 ns;  -- Ejemplo de período del reloj de 10 ns
    constant TIEMPO_DEPASOVEHICULAR : time := 5 sec;  -- Tiempo de paso del vehículo de 5 segundos

    -- Definir tipos de enumeración para los estados del controlador de tiempo
    type TIPOS_ESTADOS is (IDLE, VEHICLE_PASSING, BARRIER_CLOSING);
    signal ESTADO : TIPOS_ESTADOS := IDLE;

    -- Contadores de tiempo
    signal TIEMPO_PASOVEHICULO : unsigned(15 downto 0) := (others => '0');
    signal TIEMPOTALANQUERA_CERRADA : unsigned(15 downto 0) := (others => '0');

    -- Variables de registro
    signal REGISTRO_CONTEOVEHICULAR : unsigned(7 downto 0) := (others => '0');
    signal REGISTRO_TIEMPOVEHICULAR : unsigned(15 downto 0) := (others => '0');

begin

    process (CLK, REINICIO)
    begin
        if REINICIO = '1' then
            ESTADO <= IDLE;  -- Reiniciar el estado del controlador de tiempo
            TIEMPO_PASOVEHICULO <= (others => '0');  -- Reiniciar el temporizador de paso del vehículo
            TIEMPOTALANQUERA_CERRADA  <= (others => '0');  -- Reiniciar el temporizador de cierre de la barrera
            REGISTRO_CONTEOVEHICULAR <= (others => '0');   -- Reiniciar el registro de conteo de vehículos
            REGISTRO_TIEMPOVEHICULAR <= (others => '0');    -- Reiniciar el registro de tiempo de paso del vehículo
        elsif rising_edge(CLK) then
            -- Controlador de estado
            case ESTADO is
                when IDLE =>
                    if DETECTOR_VEHICULO = '1' and SALIDA_SEMAFORO_VERDE = '1' then
                        ESTADO <= VEHICLE_PASSING;  -- Cambiar al estado de paso del vehículo
                        TIEMPO_PASOVEHICULO <= (others => '0');  -- Iniciar el temporizador de paso del vehículo
                    end if;
                when VEHICLE_PASSING =>
                    if TIEMPO_PASOVEHICULO < to_unsigned(TIEMPO_DEPASOVEHICULAR/ PERIODO_RELOJ, TIEMPO_PASOVEHICULO'length) then
                        TIEMPO_PASOVEHICULO <= TIEMPO_PASOVEHICULO + 1;  -- Incrementar el temporizador de paso del vehículo
                    else
                        ESTADO <= BARRIER_CLOSING;  -- Cambiar al estado de cierre de la barrera
                        TIEMPOTALANQUERA_CERRADA  <= (others => '0');  -- Iniciar el temporizador de cierre de la barrera
                        REGISTRO_CONTEOVEHICULAR <= REGISTRO_CONTEOVEHICULAR + 1;  -- Incrementar el registro de conteo de vehículos
                        REGISTRO_TIEMPOVEHICULAR <= TIEMPO_PASOVEHICULO;  -- Registrar el tiempo de paso del vehículo
                    end if;
                when BARRIER_CLOSING =>
                    if ABRIR_TALANQUERA = '0' then
                        TIEMPOTALANQUERA_CERRADA  <= TIEMPOTALANQUERA_CERRADA  + 1;  -- Incrementar el temporizador de cierre de la barrera
                    else
                        ESTADO <= IDLE;  -- Volver al estado IDLE
                        TALANQUERA_CERRADA_TIEMPO <= TIEMPOTALANQUERA_CERRADA ;  -- Registrar el tiempo en que se cerró la barrera
                    end if;
            end case;
        end if;
    end process;

    -- Asignar salidas
    CONTADOR_VEHICULAR <= REGISTRO_CONTEOVEHICULAR;
    TIEMPODEPASOVEHICULAR <= REGISTRO_TIEMPOVEHICULAR;

end architecture ControlVehicular_arch;
