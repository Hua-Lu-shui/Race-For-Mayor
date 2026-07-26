#创建生态行动任务4场景中的说明标签
kill @e[type=minecraft:text_display,tag=rfm_trash_label]
summon minecraft:text_display 236 -58 65 {Tags:["rfm_trash_label"],text:'{"text":"可回收物","color":"aqua","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 232 -58 69 {Tags:["rfm_trash_label"],text:'{"text":"有害垃圾","color":"red","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 236 -58 73 {Tags:["rfm_trash_label"],text:'{"text":"厨余垃圾","color":"green","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
summon minecraft:text_display 240 -58 69 {Tags:["rfm_trash_label"],text:'{"text":"其他垃圾","color":"gray","bold":true}',billboard:"center",alignment:"center",background:0,shadow:1b,see_through:1b}
