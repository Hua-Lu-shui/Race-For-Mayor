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
data modify block 3 -62 3 front_text.messages[1] set value '{"text":"开始游戏","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/function rfm:schedule/start_check"}}'
data merge block 3 -62 3 {front_text:{has_glowing_text:1b}}

#创建房间计分板
scoreboard objectives add room dummy
#创建人数计分板
scoreboard objectives add player_count dummy
#创建回合计分板
scoreboard objectives add round dummy
#创建选择倒计时计分板
scoreboard objectives add choose_time dummy
#移除以创建的选择倒计时条
bossbar remove rfm:choose_time
#创建选择倒计时条
bossbar add rfm:choose_time {"text":"任务选择时间","color":"light_purple"}

#创建排放巡查选择倒计时条
bossbar remove rfm:emission_time
bossbar add rfm:emission_time {"text":"排放口选择时间","color":"green"}
bossbar set rfm:emission_time visible false

#创建河道取样总时间条
bossbar remove rfm:sample_time
bossbar add rfm:sample_time {"text":"河道取样","color":"blue"}
bossbar set rfm:sample_time visible false


say "加载完毕"
