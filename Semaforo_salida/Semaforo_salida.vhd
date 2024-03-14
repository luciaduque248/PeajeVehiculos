library ieee;
use ieee.std_logic_1164.all;

entity Semaforo_salida is
    port (
		  --entradas
        Sistema_habilitador  : in std_logic;            -- Habilitador del sistema
        PasoVehicular : in std_logic;     -- Señal que indica que un vehículo ha pasado
        
		  --salidas
		  Semaforoverde : out std_logic;  -- Semáforo de salida verde
        SemaforoRojo : out std_logic      -- Semáforo de salida rojo
    );
end entity Semaforo_salida;

architecture Semaforo_salida_arch of Semaforo_salida is

    -- Definir estados del semáforo
    type Tipos_estados is (Rojo, Verde);
    signal Estado : Tipos_estados := Rojo;

begin

    -- Proceso para controlar el estado del semáforo de salida
    process (Sistema_habilitador, PasoVehicular)
    begin
        if Sistema_habilitador = '1' then
            if PasoVehicular = '1' then
                Estado <= Verde;  -- Cambiar a verde cuando un vehículo pasa
            else
                Estado <= Rojo;    -- Cambiar a rojo si no hay vehículo
            end if;
        end if;
    end process;

    -- Asignación de salidas del semáforo
    Semaforoverde <= '1' when Estado = Verde else '0';
    SemaforoRojo  <= '1' when Estado = Rojo else '0';

end architecture Semaforo_salida_arch;
