Library IEEE;
use IEEE.std_Logic_1164.all;
use IEEE.numeric_std.all;

entity STI_DAC is  port (
    clk        : in std_logic;
    rst        : in std_logic;
    load        : in std_logic;
    pi_msb        : in std_logic;
    pi_low        : in std_logic;
    pi_end        : in std_logic;
    pi_data        : in std_logic_vector (15 downto 0);
    pi_length        : in std_logic_vector (1 downto 0);
    pi_fill        : in std_logic;
    so_data     : out std_logic;
    so_valid      : out std_logic;
    oem_finish      : out std_logic;
    odd1_wr      : out std_logic;
    odd2_wr      : out std_logic;
    odd3_wr      : out std_logic;
    odd4_wr      : out std_logic;
    even1_wr      : out std_logic;
    even2_wr      : out std_logic;
    even3_wr      : out std_logic;
    even4_wr      : out std_logic;
    oem_addr      : out std_logic_vector (4 downto 0);
    oem_dataout      : out std_logic_vector (7 downto 0)  );
end STI_DAC;

architecture STI_DAC_arc of STI_DAC is

begin

end STI_DAC_arc; 

