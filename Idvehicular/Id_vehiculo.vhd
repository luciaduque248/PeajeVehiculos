library ieee;
use ieee.std_logic_1164.all;

entity Id_vehiculo is
    port (
        CLK : in std_logic;                     -- Señal de reloj
        REINICIO : in std_logic;                -- Señal de reinicio
        ID : in std_logic_vector(4 downto 0);   -- Identificación vehícular categoría y ID
        IDVALIDA : in std_logic;                -- Señal de identificación válida
        ABRIR_TALANQUERA : out std_logic;       -- Señal para abrir la barrera
        LED_AUTORIZADO_VERDE : out std_logic;   -- LED verde para indicar identificación válida
        LED_DENEGADO_ROJO : out std_logic       -- LED rojo para indicar identificación inválida
    );
end entity Id_vehiculo;

architecture Id_vehiculo_arch of Id_vehiculo is

    constant CATI : std_logic_vector(1 downto 0) := "01";
    constant CATII : std_logic_vector(1 downto 0) := "10";
    constant CATIII : std_logic_vector(1 downto 0) := "11";

    type TIPOS_ESTADOS is (IDLE, AUTORIZACION_VALIDA);
    signal ESTADO : TIPOS_ESTADOS := IDLE;

begin

    process (CLK, REINICIO)
begin
    if REINICIO = '1' then
        -- Reiniciar el estado del módulo
        ESTADO  <= IDLE;
        ABRIR_TALANQUERA <= '0';  -- Para que la barrera se encuentre cerrada al inicio
        LED_AUTORIZADO_VERDE  <= '0';  -- Apagar el LED verde al inicio
        LED_DENEGADO_ROJO <= '0';    -- Apagar el LED rojo al inicio
    elsif rising_edge(CLK) then
        case ESTADO is
            when IDLE =>
                if IDVALIDA = '1' then
                    ESTADO <= AUTORIZACION_VALIDA;  -- Pasar al estado de validación si hay una identificación válida
                else
                    LED_DENEGADO_ROJO <= '1';  -- Activar el LED rojo si la identificación no es válida
                end if;
            when AUTORIZACION_VALIDA =>
                if IDVALIDA = '1' then
                    -- Encender el LED verde si la identificación es válida
                    LED_AUTORIZADO_VERDE  <= '1';
                else
                    case ID(4 downto 3) is
                        when CATI =>
                            ABRIR_TALANQUERA <= '1';  -- Abrir la barrera para categoría I
                        when CATII =>
                            ABRIR_TALANQUERA <= '1';  -- Abrir la barrera para categoría II
                        when CATIII =>
                            ABRIR_TALANQUERA <= '1';  -- Abrir la barrera para categoría III
                        when others =>
                            ABRIR_TALANQUERA <= '0';  -- Mantener la barrera cerrada para identificación inválida
                            LED_DENEGADO_ROJO <= '1';  -- Activar el LED rojo para indicar identificación inválida
                    end case;
                end if;
                ESTADO  <= IDLE;  -- Volver al estado IDLE después de la validación
        end case;
        
        -- Apagar LED_DENEGADO_ROJO cuando IDVALIDA es '1'
        if IDVALIDA = '1' then
            LED_DENEGADO_ROJO <= '0';
        end if;
    end if;
end process;



end architecture Id_vehiculo_arch;
