library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity test is
end entity;

architecture arc of test is
  signal a, b : unsigned(3 downto 0);

  signal cout1, cout2 : std_logic;

  signal i, j, k      : integer := 0; 
  signal error_found1 : integer := 0;  
  signal error_found2 : integer := 0;   
  signal clk          : std_logic;  

  component add_struct is
    port
      (
        a, b : in  unsigned(3 downto 0);
        s    : out unsigned(3 downto 0);
        cout : out std_logic
        );
  end component;

  component add_comp is
    port (
      a, b : in  unsigned(3 downto 0);
      s    : out unsigned(3 downto 0);
      cout : out std_logic
      );
  end component;

begin

  inst1 : add_struct port map (a, b, s1, cout1);
  inst2 : add_comp port map (a, b, s2, cout2);



  process
  begin
    clk <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
  end process;


  a <= to_unsigned (i, 4);
  b <= to_unsigned (j, 4);
  k <= i+j;

  process
  begin
    wait until clk'event and clk = '1';
    if k /= to_integer(cout1 & s1) then
      error_found1 <= 1;
    end if;
    if k /= to_integer(cout2 & s2) then
      error_found2 <= 1;
    end if;

    if i = 15 then
      i <= 0;
      j <= j + 1;
    else
      i <= i + 1;
    end if;

    
  end process;




end arc;
