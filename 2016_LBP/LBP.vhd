
Library IEEE;
use IEEE.std_Logic_1164.all;
use IEEE.numeric_std.all;

entity LBP is  port (
    clk        	: in std_logic;
    reset       : in std_logic;
    gray_addr   : out std_logic_vector (13 downto 0)  );
    gray_req    : out std_logic;
    gray_ready  : in std_logic;
    gray_data   : in std_logic_vector (7 downto 0);
    lbp_addr    : out std_logic_vector (13 downto 0)  );
    lbp_valid   : out std_logic;
    lbp_data    : out std_logic_vector (7 downto 0)  );
    finish      : out std_logic;
end LBP;

architecture LBP_arc of LBP is

begin

end LBP_arc; 
