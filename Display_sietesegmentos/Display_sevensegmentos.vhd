library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Importar la biblioteca numeric_std

entity Display_sevensegmentos is
    port (
        --entrada
		  num : in unsigned(3 downto 0);      -- Entrada numérica (0-9)
        --salida
		  seg : out std_logic_vector(6 downto 0)  -- Salida de los segmentos (a-g)
    );
end entity Display_sevensegmentos;

architecture Display_sevensegmentos_arch of Display_sevensegmentos is
begin
    process(num)
    begin
        case num is
            when "0000" => seg <= "1000000";  -- 0
            when "0001" => seg <= "1111001";  -- 1
            when "0010" => seg <= "0100100";  -- 2
            when "0011" => seg <= "0110000";  -- 3
            when "0100" => seg <= "0011001";  -- 4
            when "0101" => seg <= "0010010";  -- 5
            when "0110" => seg <= "0000010";  -- 6
            when "0111" => seg <= "1111000";  -- 7
            when "1000" => seg <= "0000000";  -- 8
            when "1001" => seg <= "0010000";  -- 9
            when others => seg <= "1111111";   -- Apagar todos los segmentos si el número no está en el rango de 0 a 9
        end case;
    end process;
end architecture Display_sevensegmentos_arch;
