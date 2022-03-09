FAS.vhd
Library IEEE; 
use IEEE.std_Logic_1164.all; 
use IEEE.numeric_std.all; 
ENTITY FFA IS Port( 
clk : in std_logic; 
rst : in std_logic; 
data_valid : in std_logic;
fir_valid : out std_logic;
fft_valid : out std_logic;
done : out std_logic;

data : in std_logic_vector(15 downto 0);

fir_d : out std_logic_vector(15 downto 0);
fft_d01 : out std_logic_vector(31 downto 0);
fft_d02 : out std_logic_vector(31 downto 0);
fft_d03 : out std_logic_vector(31 downto 0);
fft_d04 : out std_logic_vector(31 downto 0);
fft_d05 : out std_logic_vector(31 downto 0);
fft_d06 : out std_logic_vector(31 downto 0);
fft_d07 : out std_logic_vector(31 downto 0);
fft_d08 : out std_logic_vector(31 downto 0);
fft_d09 : out std_logic_vector(31 downto 0);
fft_d10 : out std_logic_vector(31 downto 0);
fft_d11 : out std_logic_vector(31 downto 0);
fft_d12 : out std_logic_vector(31 downto 0);
fft_d13 : out std_logic_vector(31 downto 0);
fft_d14 : out std_logic_vector(31 downto 0);
fft_d15 : out std_logic_vector(31 downto 0);
fft_d16 : out std_logic_vector(31 downto 0);

freq : out std_logic_vector(4 downto 0);
); 

END FAS; 
ARCHITECTURE FAS_arc OF FAS IS 
BEGIN 
END FAS_arc;  
