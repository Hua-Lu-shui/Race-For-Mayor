#创建三条线路的核定人数标签
kill @e[type=minecraft:text_display,tag=rfm_bus_label]
summon minecraft:text_display 241 -58 -53 {Tags:["rfm_bus_label"],text:'{"translate":"rfm.text.49ee33ebf952","color":"red","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 241 -58 -63 {Tags:["rfm_bus_label"],text:'{"translate":"rfm.text.1952bceb3e75","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 241 -58 -73 {Tags:["rfm_bus_label"],text:'{"translate":"rfm.text.7b5864b672c1","color":"blue","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
