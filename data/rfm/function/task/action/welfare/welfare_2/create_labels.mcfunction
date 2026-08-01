#创建当前赛道的阶段标签
kill @e[type=minecraft:text_display,tag=rfm_fitness_label]
execute if score @s fitness_course matches 1 run summon minecraft:text_display 798 -57 104 {Tags:["rfm_fitness_label"],text:'{"text":"起点","color":"green","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
execute if score @s fitness_course matches 1 run summon minecraft:text_display 814 -57 104 {Tags:["rfm_fitness_label"],text:'{"text":"平衡木","color":"yellow","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
execute if score @s fitness_course matches 1 run summon minecraft:text_display 841 -51 104 {Tags:["rfm_fitness_label"],text:'{"text":"射箭区","color":"aqua","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
execute if score @s fitness_course matches 1 run summon minecraft:text_display 864 -57 104 {Tags:["rfm_fitness_label"],text:'{"text":"终点","color":"gold","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
execute if score @s fitness_course matches 2 run summon minecraft:text_display 798 -57 116 {Tags:["rfm_fitness_label"],text:'{"text":"起点","color":"green","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
execute if score @s fitness_course matches 2 run summon minecraft:text_display 814 -57 116 {Tags:["rfm_fitness_label"],text:'{"text":"平衡木","color":"yellow","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
execute if score @s fitness_course matches 2 run summon minecraft:text_display 841 -51 116 {Tags:["rfm_fitness_label"],text:'{"text":"射箭区","color":"aqua","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
execute if score @s fitness_course matches 2 run summon minecraft:text_display 864 -57 116 {Tags:["rfm_fitness_label"],text:'{"text":"终点","color":"gold","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
execute if score @s fitness_course matches 3 run summon minecraft:text_display 798 -57 92 {Tags:["rfm_fitness_label"],text:'{"text":"起点","color":"green","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
execute if score @s fitness_course matches 3 run summon minecraft:text_display 814 -57 92 {Tags:["rfm_fitness_label"],text:'{"text":"平衡木","color":"yellow","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
execute if score @s fitness_course matches 3 run summon minecraft:text_display 841 -51 92 {Tags:["rfm_fitness_label"],text:'{"text":"射箭区","color":"aqua","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
execute if score @s fitness_course matches 3 run summon minecraft:text_display 864 -57 92 {Tags:["rfm_fitness_label"],text:'{"text":"终点","color":"gold","bold":true}',billboard:"center",background:0,shadow:1b,see_through:0b}
