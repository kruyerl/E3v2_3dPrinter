; ===== Start heating =====
M140 S{material_bed_temperature_layer_0}       ; Bed preheat
M104 S180

; ===== Home all axes =====
G28  ;Home
M220 S100 ;Reset Feed rate 
M221 S100 ;Reset Flow rate 
G92 E0 ;Reset Extruder

; ===== Wait for heating =====
M109 S180 ; Wait for Extruder temperature

; ===== Retract before AML =====
M104 S{material_print_temperature_layer_0} ; Set Extruder temperature

; ===== Enable mesh + AML =====
M420 S1
C29 A

; ===== Print begins =====