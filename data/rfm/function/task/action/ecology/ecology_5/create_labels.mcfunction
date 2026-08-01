#创建生态行动任务5场景中的说明标签
kill @e[type=minecraft:text_display,tag=rfm_energy_label]
summon minecraft:text_display 267 -56 79 {Tags:["rfm_energy_label"],text:'{"text":"太阳能 +1","color":"gold","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 264 -56 79 {Tags:["rfm_energy_label"],text:'{"text":"风力 +2","color":"aqua","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 261 -56 79 {Tags:["rfm_energy_label"],text:'{"text":"水力 +3","color":"blue","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 258 -56 79 {Tags:["rfm_energy_label"],text:'{"text":"储能 +4","color":"light_purple","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 262 -57 74 {Tags:["rfm_energy_label"],text:'{"text":"确认提交","color":"green","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
