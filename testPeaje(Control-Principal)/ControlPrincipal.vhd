library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlPrincipal is
    Port (
        -- Entradas
        vehicle_detected : in STD_LOGIC;  -- Desde el sensor trasero
        identification_in : in STD_LOGIC_VECTOR(4 downto 0);  -- Desde el sistema de identificación del vehículo
        cerrar_barrera : in STD_LOGIC;  -- Desde el sistema de control de la barrera de entrada
        vehicle1_position : in INTEGER range 0 to 100;  -- Posición del primer vehículo (en cm)
        vehicle2_position : in INTEGER range 0 to 100;  -- Posición del segundo vehículo (en cm)
        
        -- Salidas
        back_sensor_active : out STD_LOGIC;  -- Hacia el sensor trasero
        tagValido : out STD_LOGIC;  -- Hacia el sistema de identificación del vehículo
        barrera_abierta : out STD_LOGIC;  -- Hacia el sistema de control de la barrera de entrada
        alert : out STD_LOGIC  -- Hacia el sistema de alerta de separación de vehículos
    );
end ControlPrincipal;

architecture arch_ControlPrincipal of ControlPrincipal is
    -- Componentes
    component Back_Sensor is
        Port (
            vehicle_detected : in STD_LOGIC;
            back_sensor_active : out STD_LOGIC
        );
    end component;

    component IdentificacionVehiculo is
        Port (
            identification_in : in STD_LOGIC_VECTOR(4 downto 0);
            category_out : out STD_LOGIC_VECTOR(1 downto 0)
        );
    end component;

    component Barrera_Entrada is
        Port (
            cerrar_barrera : in STD_LOGIC;
            barrera_abierta : out STD_LOGIC
        );
    end component;

    component VehicleSeparation is
        Port (
            vehicle1_position : in INTEGER range 0 to 100;
            vehicle2_position : in INTEGER range 0 to 100;
            alert : out STD_LOGIC
        );
    end component;

    -- Señales intermedias
    signal category_out_signal : STD_LOGIC_VECTOR(1 downto 0);
    signal back_sensor_active_signal : STD_LOGIC;
    signal barrera_abierta_signal : STD_LOGIC;
begin
    -- Instanciar componentes
    Back_Sensor_inst : Back_Sensor port map (vehicle_detected => vehicle_detected, back_sensor_active => back_sensor_active_signal);
    IdentificacionVehiculo_inst : IdentificacionVehiculo port map (identification_in => identification_in, category_out => category_out_signal);
    Barrera_Entrada_inst : Barrera_Entrada port map (cerrar_barrera => cerrar_barrera, barrera_abierta => barrera_abierta_signal);
    VehicleSeparation_inst : VehicleSeparation port map (vehicle1_position => vehicle1_position, vehicle2_position => vehicle2_position, alert => alert);
    
    -- Conectar salidas de los componentes a las salidas del ControlPrincipal
    tagValido <= category_out_signal(0);
    back_sensor_active <= back_sensor_active_signal;
    barrera_abierta <= barrera_abierta_signal;
end arch_ControlPrincipal;
