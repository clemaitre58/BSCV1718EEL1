library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.numeric_std.all;

-- testbench has no ports.
entity and2_tb is
end and2_tb;

architecture and2_tb_arch of and2_tb is
   --  Declaration of the component that will be instantiated.
   component and2
    port (
        a : in std_logic;
        b : in std_logic;
        o : out std_logic);
   end component;

   --  Specifies which entity is bound with the component.
   -- for adder_0: adder use entity work.adder;
   signal a, b, o : std_logic;
begin
   --  Component instantiation.
   adder_0: and2 port map (a => a, 
                            b => b, 
                            o => o);

   --  This process does the real job.
   process
   --    type pattern_type is record
   --       --  The inputs of the adder.
   --       i0, i1, ci : bit;
   --       --  The expected outputs of the adder.
   --       s, co : bit;
   --    end record;
   --    --  The patterns to apply.
   --    type pattern_array is array (natural range <>) of pattern_type;
   --    constant patterns : pattern_array :=
   --      (('0', '0', '0', '0', '0'),
   --       ('0', '0', '1', '1', '0'),
   --       ('0', '1', '0', '1', '0'),
   --       ('0', '1', '1', '0', '1'),
   --       ('1', '0', '0', '1', '0'),
   --       ('1', '0', '1', '0', '1'),
   --       ('1', '1', '0', '0', '1'),
   --       ('1', '1', '1', '1', '1'));
   begin
       a <= '0';
       b <= '0';
       wait for 10 ns;
       a <= '1';
       b <= '0';
       wait for 10 ns;
       a <= '0';
       b <= '1';
       wait for 10 ns;
       a <= '1';
       b <= '1';
       wait for 10 ns;
   end process;
end and2_tb_arch;
