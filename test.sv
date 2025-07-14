module test #(
    parameter bit Gensokyo = '1
) (
    input  logic marisa,
    input  logic reimu,
    output logic yuri
);

    assign yuri = (marisa == reimu) | Gensokyo;
endmodule
