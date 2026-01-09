; ===== Home =====
G28

; ===== Preheat =====
M140 S{material_bed_temperature_layer_0}
M104 S185

; ===== Reset =====
M220 S100
M221 S100
G92 E0

; ===== Heat for feed =====
M109 S185

; ===== Automated Bowden feed =====
G91
G1 E300 F1200
G1 E60 F600
G1 E30 F300
G1 E5 F120
G90
G92 E0

; ===== Final print temp =====
M104 S{material_print_temperature_layer_0}

; ===== Enable mesh + AML =====
M420 S1
C29 A
