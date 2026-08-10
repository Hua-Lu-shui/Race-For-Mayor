#创建四色动作踏板标签
kill @e[type=minecraft:text_display,tag=rfm_exercise_label]
setblock 202 -59 -65 minecraft:light_weighted_pressure_plate
setblock 206 -59 -69 minecraft:light_weighted_pressure_plate
setblock 210 -59 -65 minecraft:light_weighted_pressure_plate
setblock 206 -59 -61 minecraft:light_weighted_pressure_plate
summon minecraft:text_display 202 -59 -65 {Tags:["rfm_exercise_label"],text:'{"text":"跳跃","color":"red","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 206 -59 -69 {Tags:["rfm_exercise_label"],text:'{"text":"伸展","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 210 -59 -65 {Tags:["rfm_exercise_label"],text:'{"text":"转体","color":"green","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 206 -59 -61 {Tags:["rfm_exercise_label"],text: '{"text":"整理","color":"blue","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
