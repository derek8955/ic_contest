library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity huffman is
  port
  (
    clk        : in  std_logic;
    reset      : in  std_logic;
    gray_valid : in  std_logic;
    gray_data  : in  std_logic_vector(7 downto 0);
    CNT_valid  : out std_logic;
    CNT1, CNT2, CNT3, CNT4, CNT5, CNT6 : out std_logic_vector(7 downto 0);
    code_valid : out std_logic;
    HC1, HC2, HC3, HC4, HC5, HC6 : out std_logic_vector(7 downto 0);
    M1, M2, M3, M4, M5, M6 : out std_logic_vector(7 downto 0);
  );
end huffman;

architecture huffman_arch of huffman is
begin

end huffman_arch;



