#创建三条线路的核定人数标签
kill @e[type=minecraft:text_display,tag=rfm_bus_label]
summon minecraft:text_display 936 -57.5 96 {Tags:["rfm_bus_label"],text:'{"text":"红线 · 满3人发车","color":"red","bold":true}',billboard:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 948 -57.5 96 {Tags:["rfm_bus_label"],text:'{"text":"黄线 · 满4人发车","color":"yellow","bold":true}',billboard:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 960 -57.5 96 {Tags:["rfm_bus_label"],text:'{"text":"蓝线 · 满5人发车","color":"blue","bold":true}',billboard:"center",background:0,shadow:1b,see_through:1b}
