library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Peaje_electronico is
    port (
        --entradas
        CLK : in std_logic;                                      -- Señal de reloj
        REINICIO : in std_logic;                                 -- Señal de reinicio
        DETECTOR_VEHICULO : in std_logic;                        -- Señal que indica la detección de un vehículo
        ABRIR_TALANQUERA : in std_logic;                         -- Señal que indica el estado de la barrera manual (1 cerrado, 0 abierto)
        IDVALIDA : in std_logic;                                 -- Señal de identificación válida
		  
		  SALIDA_SEMAFORO_VERDE_CONTROL : in std_logic;            -- Señal de control del semáforo verde
		  
		  SALIDA_SEMAFORO_VERDE_PEAJE : buffer std_logic;               -- Señal que indica el estado verde del semáforo de salida en el peaje
		
		--salidas
		salidaSemaforoVerde : out std_logic;                -- Señal que indica el estado verde del semáforo de salida
        salidaSemaforoRojo : out std_logic;   
		  
		sieteSegmentos  : out std_logic_vector(6 downto 0); 
        CONTADOR_VEHICULAR  : out unsigned(7 downto 0);          -- Contador de vehículos
        TALANQUERA_CERRADA_TIEMPO  : out unsigned(15 downto 0);  -- Tiempo en que se cerró la barrera
        SemaforoRojoPeaje : out std_logic;                            -- Semáforo de entrada rojo
        SemaforoVerdePeaje : out std_logic;                           -- Semáforo de entrada verde
        manualBarrier  : out std_logic;                             -- Barrera de entrada
        LED_AUTORIZADO_VERDE : out std_logic;                    -- LED verde para indicar identificación válida
        LED_DENEGADO_ROJO : out std_logic;                       -- LED rojo para indicar identificación inválida
		
        LED_CATEGORIA_0 : out std_logic;                        -- LED para la categoría de vehículo 0
        LED_CATEGORIA_1 : out std_logic;                        -- LED para la categoría de vehículo 1
        LED_CATEGORIA_2 : out std_logic;                        -- LED para la categoría de vehículo 2
        CATEGORIA_VEHICULO : in unsigned(2 downto 0);             -- Categoría del vehículo (3 bits)
        clk_out_divisor : out std_logic
    );
end entity Peaje_electronico;

architecture Peaje_electronico_arch of Peaje_electronico is


    -- Declaración de señales internas
    signal vehiclePassed : std_logic;
	 
    --signal manualBarrier : std_logic;   -- Señal para indicar el estado de la barrera manual
    signal semaphoreGreen : std_logic;  -- Señal para indicar el estado verde del semáforo
    signal PasoVehicular : std_logic;   -- Señal para indicar el paso de un vehículo
	 
    -- Señales intermedias para SemaforoRojo
    signal SemaforoRojo_int_Talanquera : std_logic;
    signal SemaforoRojo_int_Salida : std_logic;
	 
    -- Cambio de nombre de la señal local
    signal ABRIR_TALANQUERA_INTERNAL : std_logic;
	 
    -- Contador de vehículos interno
    signal contador_vehiculos_int : unsigned(7 downto 0);
	 
    -- Señal para los segmentos del display
    signal seg_display : std_logic_vector(6 downto 0);
    
	 -- Señal para el tiempo de paso del vehículo
    signal tiempo_paso_int : unsigned(15 downto 0);
    
	 -- Señal para la tarifa calculada
    signal tarifa_calculada : unsigned(7 downto 0);
    
	 -- Señal de salida del divisor de frecuencia
    --signal clk_out_divisor : std_logic;

    -- Componentes
    component Front_sensor
        port (
            --Entrada
            CLK : in std_logic;              -- Señal de reloj
            --Salida
            DETECTOR_VEHICULO : out std_logic --Detección de vehículo
        );
    end component;

    component Id_vehiculo
        port (
            --entradas
            CLK : in std_logic;                     -- Señal de reloj
            REINICIO : in std_logic;                -- Señal de reinicio
            ID : in std_logic_vector(4 downto 0);   -- Identificación vehícular categoría y ID
            IDVALIDA : in std_logic;                 -- Señal de identificación válida
            --salidas
            ABRIR_TALANQUERA : out std_logic;       -- Señal para abrir la barrera
            LED_AUTORIZADO_VERDE : out std_logic;               -- LED verde para indicar identificación válida
            LED_DENEGADO_ROJO : out std_logic                  -- LED rojo para indicar identificación inválida
        );
    end component;

    component SemaforoTalanquera
        port (
            -- entradas
            Sistema_habilitador : in std_logic;           -- Habilitador del sistema
            EstadoTalanquera : in std_logic;    -- Estado de la barrera manual (1 cerrado, 0 abierto)
            -- salidas
            SemaforoRojoTalanquera : out std_logic;     
            SemaforoVerdeTalanquera : out std_logic;   
            talanquera : out std_logic       
        );
    end component;

    component Semaforo_salida
        port (
            --entradas
            Sistema_habilitador  : in std_logic;            -- Habilitador del sistema
            PasoVehicular : in std_logic;     -- Señal que indica que un vehículo ha pasado
            --salidas
            SemaforoVerde : out std_logic;  -- Semáforo de salida verde
            SemaforoRojo : out std_logic      -- Semáforo de salida rojo
        );
    end component;

    component ControlVehicular
        port (
		  --entradas
        CLK: in std_logic;                   -- Señal de reloj
        REINICIO: in std_logic;                 -- Señal de reinicio
        DETECTOR_VEHICULO: in std_logic;       -- Señal que indica la detección de un vehículo
        ABRIR_TALANQUERA : in std_logic;           -- Señal que indica si la barrera está abierta
        SALIDA_SEMAFORO_VERDE : in std_logic;    -- Señal que indica el estado verde del semáforo de salida
        
		  --salidas
		  CONTADOR_VEHICULAR : out unsigned(7 downto 0);  -- Contador de vehículos
        TIEMPODEPASOVEHICULAR : out unsigned(15 downto 0); -- Tiempo de paso del vehículo
        TALANQUERA_CERRADA_TIEMPO : out unsigned(15 downto 0) -- Tiempo en que se cerró la barrera
    );
    end component;

    component Display_sevensegmentos
        port (
            --entrada
            num : in unsigned(3 downto 0);      -- Entrada numérica (0-9)
            --salida
            seg : out std_logic_vector(6 downto 0)  -- Salida de los segmentos (a-g)
        );
    end component;

    component Calcular_Tarifa
        port (
            --entrada
            CLK : in std_logic;                           -- Señal de reloj
            CATEGORIA_VEHICULO : in unsigned(2 downto 0);-- Categoría del vehículo (2 bits)
            TIEMPO_PASO : in unsigned(15 downto 0);       -- Tiempo de paso del vehículo (16 bits)
            --salida
            TARIFA : out unsigned(7 downto 0)             -- Tarifa calculada
        );
    end component;

    -- Componente Divisor de Frecuencia
    component Divisor_Frecuencia
        generic (
            DIVIDER_VALUE : integer := 25000000  -- Valor para dividir la frecuencia
        );
        port (
            CLK_IN : in std_logic;         -- Señal de entrada de reloj
            CLK_OUT : buffer std_logic        -- Señal de salida de reloj dividida
        );
    end component;

begin

	 -- Asignaciones de LEDs para las categorías de vehículos
    LED_CATEGORIA_0 <= CATEGORIA_VEHICULO(0);
	 LED_CATEGORIA_1 <= CATEGORIA_VEHICULO(1);
	 LED_CATEGORIA_2 <= CATEGORIA_VEHICULO(2);


	-- Conectar SALIDA_SEMAFORO_VERDE de ControlVehicular a SALIDA_SEMAFORO_VERDE_PEAJE
    SALIDA_SEMAFORO_VERDE_PEAJE <= SALIDA_SEMAFORO_VERDE_CONTROL;
	 
	 -- Asignar la salida del contador interno al puerto CONTADOR_VEHICULAR
    CONTADOR_VEHICULAR <= contador_vehiculos_int;
	 
    -- Instanciación de los componentes
    Front_sensor_inst : Front_sensor port map (
        CLK => CLK,
        DETECTOR_VEHICULO => PasoVehicular
    );

    Id_vehiculo_inst : Id_vehiculo port map (
        CLK => CLK,
        REINICIO => REINICIO,
        ID => (others => '0'),  -- Asegúrate de conectar correctamente la señal de ID
        IDVALIDA => IDVALIDA,
        ABRIR_TALANQUERA => ABRIR_TALANQUERA_INTERNAL,
        LED_AUTORIZADO_VERDE => LED_AUTORIZADO_VERDE,
        LED_DENEGADO_ROJO => LED_DENEGADO_ROJO
    );

    SemaforoTalanquera_inst : SemaforoTalanquera port map (
        Sistema_habilitador => CLK,
        EstadoTalanquera => ABRIR_TALANQUERA_INTERNAL,
        SemaforoRojoTalanquera => SemaforoRojoPeaje,
        SemaforoVerdeTalanquera => SemaforoVerdePeaje,
        talanquera => manualBarrier
    );

    Semaforo_salida_inst : Semaforo_salida port map (
        Sistema_habilitador => CLK,
        PasoVehicular => PasoVehicular,
        SemaforoVerde => salidaSemaforoVerde,  -- Corregido
        SemaforoRojo => salidaSemaforoRojo
    );

    ControlVehicular_inst : ControlVehicular port map (
        CLK => CLK,
        REINICIO => REINICIO,
        DETECTOR_VEHICULO => DETECTOR_VEHICULO,
        ABRIR_TALANQUERA => ABRIR_TALANQUERA,  -- Conectado el pin ABRIR_TALANQUERA
        SALIDA_SEMAFORO_VERDE => SALIDA_SEMAFORO_VERDE_PEAJE,
        CONTADOR_VEHICULAR => contador_vehiculos_int,
        TIEMPODEPASOVEHICULAR => tiempo_paso_int,
        TALANQUERA_CERRADA_TIEMPO => TALANQUERA_CERRADA_TIEMPO
    );

    Display_sevensegmentos_inst : Display_sevensegmentos port map (
        num => contador_vehiculos_int(3 downto 0),
        seg => sieteSegmentos
    );

    Calcular_Tarifa_inst : Calcular_Tarifa port map (
        CLK => CLK,
        CATEGORIA_VEHICULO => CATEGORIA_VEHICULO,
        TIEMPO_PASO => tiempo_paso_int,
        TARIFA => tarifa_calculada
    );

    -- Instanciar Divisor de Frecuencia
    Divisor_Frecuencia_inst : Divisor_Frecuencia
        generic map (
            DIVIDER_VALUE => 10000  -- El valor de división deseado
        )
        port map (
            CLK_IN => CLK,                     -- Conectar la señal de reloj de entrada
            CLK_OUT => clk_out_divisor  -- Conectar la señal de reloj dividida
        );

end architecture Peaje_electronico_arch;