
Library IEEE;
use IEEE.std_Logic_1164.all;
use IEEE.numeric_std.all;

entity LCD_CTRL is  port (
    clk        	: in std_logic;
    reset       : in std_logic;
    cmd         : in std_logic_vector (3 downto 0);
    cmd_valid   : in std_logic;
    IROM_Q      : in std_logic_vector (7 downto 0); 
    IROM_rd    	: out std_logic;
    IROM_A      : out std_logic_vector (5 downto 0);
    IRAM_valid  : out std_logic;
    IRAM_D      : out std_logic_vector (7 downto 0);  
    IRAM_A      : out std_logic_vector (5 downto 0);  
    busy        : out std_logic;
    done        : out std_logic;
;  
   
end DT;

architecture DT_arc of DT is

begin

end DT_arc; 
