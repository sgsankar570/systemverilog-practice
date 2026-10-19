
module data_types;

    // Data type declarations
    logic    a;
    bit      b;
    byte     c;
    shortint d;
    int      e;
    longint  f;

    initial begin

        // Display default values and sizes
        $display("----- DEFAULT VALUES -----");
        $display("logic    a = %b, size = %0d bits", a, $bits(a));
        $display("bit      b = %b, size = %0d bits", b, $bits(b));
        $display("byte     c = %0d, size = %0d bits", c, $bits(c));
        $display("shortint d = %0d, size = %0d bits", d, $bits(d));
        $display("int      e = %0d, size = %0d bits", e, $bits(e));
        $display("longint  f = %0d, size = %0d bits", f, $bits(f));

        // Assign different values
        a = 1'b1;
        b = 1'b0;
        c = 8'd100;
        d = 16'd2000;
        e = 32'd50000;
        f = 64'd1000000;

        // Display assigned values
        $display("\n----- ASSIGNED VALUES -----");
        $display("logic    a = %b", a);
        $display("bit      b = %b", b);
        $display("byte     c = %0d", c);
        $display("shortint d = %0d", d);
        $display("int      e = %0d", e);
        $display("longint  f = %0d", f);

    end

endmodule


