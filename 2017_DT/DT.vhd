
Library IEEE;
use IEEE.std_Logic_1164.all;
use IEEE.numeric_std.all;

entity DT is  port (
    clk        	: in std_logic;
    reset       : in std_logic;
    done      	: out std_logic;
    sti_rd      : out std_logic;
    sti_addr    : out std_logic_vector (9 downto 0);
    sti_di      : in std_logic_vector (15 downto 0);
    res_wr      : out std_logic;
    res_rd      : out std_logic;
    res_addr    : out std_logic_vector (13 downto 0)  ;
    res_do      : out std_logic_vector (7 downto 0)  ;  
    res_di      : in std_logic_vector (7 downto 0)  ;    
end DT;

architecture DT_arc of DT is

begin

end DT_arc; 
