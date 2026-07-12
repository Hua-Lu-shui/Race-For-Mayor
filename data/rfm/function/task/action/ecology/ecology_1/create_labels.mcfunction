#清除旧编号，避免多次执行任务后产生重复实体
kill @e[type=minecraft:text_display,tag=rfm_emission_label]

#在九个排放口上方生成所有玩家可见的悬浮编号
summon minecraft:text_display 96 -57 96 {Tags:["rfm_emission_label"],text:'{"text":"1","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 100 -57 96 {Tags:["rfm_emission_label"],text:'{"text":"2","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 104 -57 96 {Tags:["rfm_emission_label"],text:'{"text":"3","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}

summon minecraft:text_display 96 -57 100 {Tags:["rfm_emission_label"],text:'{"text":"4","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 100 -57 100 {Tags:["rfm_emission_label"],text:'{"text":"5","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 104 -57 100 {Tags:["rfm_emission_label"],text:'{"text":"6","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}

summon minecraft:text_display 96 -57 104 {Tags:["rfm_emission_label"],text:'{"text":"7","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 100 -57 104 {Tags:["rfm_emission_label"],text:'{"text":"8","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 104 -57 104 {Tags:["rfm_emission_label"],text:'{"text":"9","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
