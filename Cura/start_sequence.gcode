; ===== Home =====
G28

; ===== Preheat =====
M140 S{material_bed_temperature_layer_0}
M104 S185

; ===== Reset =====
M220 S100
M221 S100
G92 E0

; ===== Wait for Heat =====
M109 S185

; ===== Final print temp =====
M104 S{material_print_temperature_layer_0}

; ===== Enable mesh + AML =====
M420 S1
C29 A