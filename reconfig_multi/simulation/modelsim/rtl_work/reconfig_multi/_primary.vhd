library verilog;
use verilog.vl_types.all;
entity reconfig_multi is
    port(
        x               : in     vl_logic_vector(31 downto 0);
        s               : in     vl_logic;
        y               : out    vl_logic_vector(31 downto 0)
    );
end reconfig_multi;
