library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.numeric_std.all;

entity and2 is
    port (
        a : in std_logic;
        b : in std_logic;
        o : out std_logic);
end and2;

architecture and2_arch of and2 is
begin
    o <= a and b;
end and2_arch;
