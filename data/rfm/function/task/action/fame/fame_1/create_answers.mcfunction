#创建三个固定的临场应对按钮标签
kill @e[type=minecraft:text_display,tag=rfm_speech_answer]
summon minecraft:text_display 485 -58 107 {Tags:["rfm_speech_label","rfm_speech_answer"],text:'{"text":"安抚情绪","color":"aqua","bold":true}',billboard:"center",alignment:"center",line_width:100,background:1073741824,shadow:1b,see_through:1b}
summon minecraft:text_display 488 -58 107 {Tags:["rfm_speech_label","rfm_speech_answer"],text:'{"text":"补充说明","color":"yellow","bold":true}',billboard:"center",alignment:"center",line_width:100,background:1073741824,shadow:1b,see_through:1b}
summon minecraft:text_display 491 -58 107 {Tags:["rfm_speech_label","rfm_speech_answer"],text:'{"text":"坚定承诺","color":"light_purple","bold":true}',billboard:"center",alignment:"center",line_width:100,background:1073741824,shadow:1b,see_through:1b}
