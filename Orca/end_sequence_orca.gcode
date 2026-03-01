{if max_layer_z < printable_height}G1 Z{min(max_layer_z+2, printable_height)} F600 ; Move print head up{endif}
{if max_layer_z < printable_height-10}G1 Z{min(max_layer_z+70, printable_height-10)} F600 ; Move print head further up{endif}
{if max_layer_z < printable_height*0.6}G1 Z{printable_height*0.6} F600 ; Move print head further up{endif}

; ===== Present =====
G27 ; Park toolheads

; ===== Heat & unload =====
M109 S200

; ==TODO: Filament is stringy when unloading. Lower temp==
M702 ; MRiscoC filament unload

; ===== Shutdown =====
G92 E0
M106 S0
M104 S0
M140 S0
M84 X Y E             ; Keep Z locked