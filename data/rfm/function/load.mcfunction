#告示牌点击事件
data modify block 3 -62 6 front_text.messages[1] set value '{"text":"明星","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:candidate/star"}}'
data merge block 3 -62 6 {front_text:{has_glowing_text:1b}}
data modify block 3 -62 8 front_text.messages[1] set value '{"text":"企业家","color":"yellow","clickEvent":{"action":"run_command","value":"/function rfm:candidate/business"}}'
data merge block 3 -62 8 {front_text:{has_glowing_text:1b}}
data modify block 3 -62 10 front_text.messages[1] set value '{"text":"社区领袖","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:candidate/community"}}'
data merge block 3 -62 10 {front_text:{has_glowing_text:1b}}
data modify block 3 -62 12 front_text.messages[1] set value '{"text":"学者","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:candidate/scholar"}}'
data merge block 3 -62 12 {front_text:{has_glowing_text:1b}}
data modify block 3 -62 14 front_text.messages[1] set value '{"text":"公务员","color":"light_purple","clickEvent":{"action":"run_command","value":"/function rfm:candidate/official"}}'
data merge block 3 -62 14 {front_text:{has_glowing_text:1b}}
data modify block 3 -62 1 front_text.messages[1] set value '{"text":"教程","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function rfm:tutorial/show"}}'
data merge block 3 -62 1 {front_text:{has_glowing_text:1b}}
data modify block 3 -62 3 front_text.messages[1] set value '{"text":"开始游戏","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/function rfm:start/start"}}'
data merge block 3 -62 3 {front_text:{has_glowing_text:1b}}

#创建游戏开始触发器
scoreboard objectives add start trigger
#创建房间计分板
scoreboard objectives add room dummy

say "加载完毕"
