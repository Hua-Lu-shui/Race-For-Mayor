#创建三条线路的核定人数标签
kill @e[type=minecraft:text_display,tag=rfm_bus_label]
summon minecraft:text_display 241 -58 -53 {Tags:["rfm_bus_label"],text:'{"text":"满3人发车","color":"red","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 241 -58 -63 {Tags:["rfm_bus_label"],text:'{"text":"满4人发车","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 241 -58 -73 {Tags:["rfm_bus_label"],text:'{"text":"满5人发车","color":"blue","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
