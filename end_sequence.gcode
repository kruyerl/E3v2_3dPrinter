; ===== Safe lift =====
G91
G1 Z10 F2400
G90

; ===== Move head clear =====
G1 X248 F6000

; ===== Heat & unload =====
M109 S200

; ==TODO: Filament is stringy when unloading. Lower temp==
M702 ; MRiscoC filament unload

; ===== Present print =====
G1 Y{machine_depth} F6000

; ===== Shutdown =====
G92 E0
M106 S0
M104 S0
M140 S0
M84 X Y E             ; Keep Z locked