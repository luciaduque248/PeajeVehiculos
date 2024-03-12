library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IdentificacionVehiculo is
    Port ( identification_in : in STD_LOGIC_VECTOR(4 downto 0);
           category_out : out STD_LOGIC_VECTOR(1 downto 0));
end IdentificacionVehiculo;

architecture arch_IdentificacionVehiculo of IdentificacionVehiculo is
begin
    process(identification_in)
    begin
        -- Lógica para interpretar la identificación y determinar la categoría del vehículo
        -- Puedes adaptar esta lógica según tus necesidades específicas
        case identification_in(4 downto 3) is
            when "00" =>
                category_out <= "00"; -- Categoría CATI
            when "01" =>
                category_out <= "01"; -- Categoría CATII
            when others =>
                category_out <= "10"; -- Categoría CATIII
        end case;
    end process;
end arch_IdentificacionVehiculo;
