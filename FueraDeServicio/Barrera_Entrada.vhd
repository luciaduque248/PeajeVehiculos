library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Barrera_Entrada is
    Port ( cerrar_barrera : in STD_LOGIC;
           barrera_abierta : out STD_LOGIC);
end Barrera_Entrada;

architecture arch_Barrera_Entrada of Barrera_Entrada is
begin
    process(cerrar_barrera)
    begin
        -- Lógica para controlar la barrera de entrada
        if cerrar_barrera = '1' then
            barrera_abierta <= '0'; -- Cerrar la barrera
        else
            barrera_abierta <= '1'; -- Abrir la barrera
        end if;
    end process;
end arch_Barrera_Entrada;
