#创建三个分诊窗口的说明标签
kill @e[type=minecraft:text_display,tag=rfm_hospital_label]
summon minecraft:text_display 752 -56.8 102 {Tags:["rfm_hospital_label"],text:'{"text":"急诊","color":"red","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 760 -56.8 102 {Tags:["rfm_hospital_label"],text:'{"text":"优先门诊","color":"yellow","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
summon minecraft:text_display 768 -56.8 102 {Tags:["rfm_hospital_label"],text:'{"text":"普通门诊","color":"green","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b}
