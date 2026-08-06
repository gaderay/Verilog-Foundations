module mealy1011(input clk, rst, x, output reg y);

    parameter s0=3'b000, s1=3'b001, s2=3'b010, s3=3'b011;
    reg [2:0] cs, ns;

    // State register (sequential)
    always @(posedge clk or posedge rst) begin
    if (rst)
    cs <= 50;
    else
    cs <= ns;

    end

// Next-state and output logic (COMBINATIONAL with NON-BLOCKING)
    always @(*) begin
        ns <= cs;
        y <= 1'b0;

        case (cs)
        s0: begin
            if (x) ns <= s1;
            else ns <= s0;
        end
        s1: begin
            if (x) ns <= s1;
            else ns <= s2;
        end
        s2: begin
            if (x) ns <= s3;
            else ns <= s0;
        end
         s2: begin
            if (x) ns <= s3;
            else ns <= s0;
        end
end


