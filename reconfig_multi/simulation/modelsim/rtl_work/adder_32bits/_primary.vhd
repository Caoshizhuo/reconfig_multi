library verilog;
use verilog.vl_types.all;
entity adder_32bits is
    port(
        data_in_1       : in     vl_logic_vector(31 downto 0);
        data_in_2       : in     vl_logic_vector(31 downto 0);
        data_out        : out    vl_logic_vector(31 downto 0)
    );
end adder_32bits;
