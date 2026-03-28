;
; First layer print x min = [first_layer_print_min_0]
; First layer print y min = [first_layer_print_min_1]
; First layer print x max = [first_layer_print_max_0]
; First layer print y max = [first_layer_print_max_1]
; Total layer count = [total_layer_count]
;

; ===== Preheat =====
M104 S[first_layer_temperature] ; set extruder temperature
M140 S[first_layer_bed_temperature] ; set bed temperature

; ===== Positioning & Resets =====
G90                 ; Absolute positioning
M83                 ; Extruder relative
G92 E0              ; Reset extruder
M220 S100
M221 S100
G28 ; Home all axes
G27 ; Park toolheads

; ===== Heat =====
M190 S[first_layer_bed_temperature] ; wait for bed temperature
M109 S[first_layer_temperature] ; wait for extruder temperature

; Retract filament slightly before leveling
G1 E-2 F3000 ; retract 2mm at 50mm/s
G92 E0              ; Reset extruder

; ===== Leveling =====
M420 S1 ; activate leveling
;
; Adaptive Mesh Leveling (AML)
; AML mesh density X = auto
; AML mesh density Y = auto
; AML margin = 5
; AML prime = 1
C29 A ; use AML
;