#执行load函数对应的游戏流程
#告示牌点击事件
data modify block 61 -49 -22 front_text.messages[1] set value '{"text":"明星","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:candidate/star"}}'
data merge block 61 -49 -22 {front_text:{has_glowing_text:1b}}
data modify block 63 -49 -22 front_text.messages[1] set value '{"text":"企业家","color":"yellow","clickEvent":{"action":"run_command","value":"/function rfm:candidate/business"}}'
data merge block 63 -49 -22 {front_text:{has_glowing_text:1b}}
data modify block 65 -49 -22 front_text.messages[1] set value '{"text":"社区领袖","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:candidate/community"}}'
data merge block 65 -49 -22 {front_text:{has_glowing_text:1b}}
data modify block 67 -49 -22 front_text.messages[1] set value '{"text":"学者","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:candidate/scholar"}}'
data merge block 67 -49 -22 {front_text:{has_glowing_text:1b}}
data modify block 69 -49 -22 front_text.messages[1] set value '{"text":"公务员","color":"light_purple","clickEvent":{"action":"run_command","value":"/function rfm:candidate/official"}}'
data merge block 69 -49 -22 {front_text:{has_glowing_text:1b}}
data modify block 55 -49 -22 front_text.messages[1] set value '{"text":"教程","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function rfm:tutorial/show"}}'
data merge block 55 -49 -22 {front_text:{has_glowing_text:1b}}
data modify block 49 -49 -22 front_text.messages[1] set value '{"text":"开始游戏","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/function rfm:schedule/start_check"}}'
data merge block 49 -49 -22 {front_text:{has_glowing_text:1b}}
#——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
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

#名誉行动601“街头演讲”倒计时
bossbar remove rfm:speech_time
bossbar add rfm:speech_time {"text":"街头演讲","color":"aqua"}
bossbar set rfm:speech_time visible false

#生态行动901“排放巡查”倒计时
bossbar remove rfm:emission_time
bossbar add rfm:emission_time {"text":"排放口选择时间","color":"green"}
bossbar set rfm:emission_time visible false

#生态行动902“河道取样”倒计时
bossbar remove rfm:sample_time
bossbar add rfm:sample_time {"text":"河道取样","color":"blue"}
bossbar set rfm:sample_time visible false

#生态行动903“公园维护”倒计时
bossbar remove rfm:park_time
bossbar add rfm:park_time {"text":"公园维护","color":"green"}
bossbar set rfm:park_time visible false

#生态行动904“垃圾分类督导”倒计时
bossbar remove rfm:trash_time
bossbar add rfm:trash_time {"text":"垃圾分类督导","color":"green"}
bossbar set rfm:trash_time visible false

#生态行动905“清洁能源检查”倒计时
bossbar remove rfm:energy_time
bossbar add rfm:energy_time {"text":"清洁能源检查","color":"yellow"}
bossbar set rfm:energy_time visible false

#经济行动701“市场调研”倒计时
bossbar remove rfm:market_time
bossbar add rfm:market_time {"text":"市场调研","color":"yellow"}
bossbar set rfm:market_time visible false

#经济行动702“招商洽谈”倒计时
bossbar remove rfm:negotiation_time
bossbar add rfm:negotiation_time {"text":"招商洽谈","color":"yellow"}
bossbar set rfm:negotiation_time visible false

#经济行动703“预算核查”倒计时
bossbar remove rfm:audit_time
bossbar add rfm:audit_time {"text":"预算核查","color":"yellow"}
bossbar set rfm:audit_time visible false

#经济行动704“商圈巡查”倒计时
bossbar remove rfm:supply_time
bossbar add rfm:supply_time {"text":"商圈巡查","color":"yellow"}
bossbar set rfm:supply_time visible false

#经济行动705“就业走访”倒计时
bossbar remove rfm:employment_time
bossbar add rfm:employment_time {"text":"就业走访","color":"yellow"}
bossbar set rfm:employment_time visible false
#—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
#启动低频属性显示循环
schedule function rfm:display/display 1t replace


say "加载完毕"


