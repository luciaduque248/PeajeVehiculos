library ieee;
use ieee.std_logic_1164.all;

entity SemaforoTalanquera is
    port (
		  -- entradas
        Sistema_habilitador : in std_logic;           -- Habilitador del sistema
        EstadoTalanquera : in std_logic;    -- Estado de la barrera manual (1 cerrado, 0 abierto)
        
		  -- salidas
		  SemaforoRojoTalanquera : out std_logic;     
        SemaforoVerdeTalanquera : out std_logic;   
        talanquera : out std_logic       
    );
end entity SemaforoTalanquera;

architecture SemaforoTalanquera_arch of SemaforoTalanquera is

    -- Definir tipos de enumeración para los estados del semáforo y la barrera
    type Tipos_estados is (Rojo, Verde);
    signal Estado : Tipos_estados := Rojo;

begin

    -- Proceso para controlar el estado del semáforo y la barrera
    process (Sistema_habilitador, EstadoTalanquera)
    begin
        if Sistema_habilitador = '1' then
            case Estado is
                when Rojo =>
                    SemaforoRojoTalanquera <= '1';
                    SemaforoVerdeTalanquera <= '0';
                    Talanquera <= '1';
                    if EstadoTalanquera = '0' then -- Si la barrera manual está abierta
                        Estado <= Verde; -- Cambiar al estado verde
                    end if;
                when Verde =>
                    SemaforoRojoTalanquera <= '0';
                    SemaforoVerdeTalanquera <= '1';
                    Talanquera <= '0';
                    if EstadoTalanquera = '1' then -- Si la barrera manual está cerrada
                        Estado <= Rojo; -- Cambiar al estado rojo
                    end if;
            end case;
        end if;
    end process;

end architecture SemaforoTalanquera_arch;
