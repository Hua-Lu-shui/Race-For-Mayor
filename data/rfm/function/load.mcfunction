#执行load函数对应的游戏流程
#取消旧版本曾写入玩家数据的击退抗性基础值
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
#生成带有对应文字、颜色与点击事件的告示牌
# /reload后回到可重新开局状态，使开始游戏告示牌可以立即使用
scoreboard players set #start_pending phase 0
setblock 61 -49 -22 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{has_glowing_text:0b,messages:['""','{"text":"明星","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 1"}}','""','""']}}
setblock 63 -49 -22 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{has_glowing_text:0b,messages:['""','{"text":"企业家","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 2"}}','""','""']}}
setblock 65 -49 -22 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{has_glowing_text:0b,messages:['""','{"text":"社区领袖","color":"red","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 3"}}','""','""']}}
setblock 67 -49 -22 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{has_glowing_text:0b,messages:['""','{"text":"学者","color":"green","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 4"}}','""','""']}}
setblock 69 -49 -22 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{color:"light_gray",has_glowing_text:0b,messages:['""','{"text":"公务员","color":"#F5F5DC","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 5"}}','""','""']}}
setblock 71 -49 -22 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{color:"orange",has_glowing_text:0b,messages:['""','{"text":"军人","color":"#FFA500","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 6"}}','""','""']}}
setblock 73 -49 -22 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{has_glowing_text:0b,messages:['""','{"text":"律师","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 7"}}','""','""']}}
setblock 75 -49 -22 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{has_glowing_text:0b,messages:['""','{"text":"医生","color":"#012696","clickEvent":{"action":"run_command","value":"/trigger lobby_action set 8"}}','""','""']}}
setblock 55 -49 -22 minecraft:oak_wall_sign[facing=south,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"text":"教程","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 9"}}','""','""']}}
#每次/reload都重新显现开始游戏告示牌；游戏中点击会由start_check的状态锁拦截
setblock 49 -49 -22 minecraft:oak_wall_sign[facing=south,waterlogged=false]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','{"text":"开始游戏","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 10"}}','""','""']}}
#——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
scoreboard objectives add room dummy
#大厅身份、教程与开始游戏告示牌统一入口
scoreboard objectives add lobby_action trigger
#创建人数计分板
scoreboard objectives add player_count dummy
#创建回合计分板
scoreboard objectives add round dummy
#创建选择倒计时计分板
scoreboard objectives add choose_time dummy
#移除以创建的选择倒计时条
bossbar remove rfm:choose_time
#创建选择倒计时条
bossbar add rfm:choose_time [{"text":"","font":"minecraft:default"},{"text":"\uE20E","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE232","font":"rfm:bossbar"},{"text":"任务选择时间","color":"light_purple"}]
bossbar set rfm:choose_time color white

#名誉行动601“街头演讲”倒计时
bossbar remove rfm:speech_time
bossbar add rfm:speech_time [{"text":"街头演讲","color":"aqua"}]
bossbar set rfm:speech_time color blue
bossbar set rfm:speech_time visible false

#名誉行动602“社区拜访”倒计时
bossbar remove rfm:visit_time
bossbar add rfm:visit_time [{"text":"社区拜访","color":"aqua"}]
bossbar set rfm:visit_time color blue
bossbar set rfm:visit_time visible false

#名誉行动603“市民合影”倒计时
bossbar remove rfm:photo_time
bossbar add rfm:photo_time [{"text":"市民合影","color":"aqua"}]
bossbar set rfm:photo_time color blue
bossbar set rfm:photo_time visible false

#名誉行动604“公开答疑”反应倒计时
bossbar remove rfm:qa_time
bossbar add rfm:qa_time [{"text":"公开答疑","color":"aqua"}]
bossbar set rfm:qa_time color blue
bossbar set rfm:qa_time visible false

#名誉行动605“市民应援”倒计时
bossbar remove rfm:cheer_time
bossbar add rfm:cheer_time [{"text":"市民应援","color":"aqua"}]
bossbar set rfm:cheer_time color blue
bossbar set rfm:cheer_time visible false

#生态行动901“排放巡查”倒计时
bossbar remove rfm:emission_time
bossbar add rfm:emission_time [{"text":"排放口选择时间","color":"green"}]
bossbar set rfm:emission_time color green
bossbar set rfm:emission_time visible false

#生态行动902“河道取样”倒计时
bossbar remove rfm:sample_time
bossbar add rfm:sample_time [{"text":"河道取样","color":"blue"}]
bossbar set rfm:sample_time color green
bossbar set rfm:sample_time visible false

#生态行动903“公园维护”倒计时
bossbar remove rfm:park_time
bossbar add rfm:park_time [{"text":"公园维护","color":"green"}]
bossbar set rfm:park_time color green
bossbar set rfm:park_time visible false

#生态行动904“垃圾分类督导”倒计时
bossbar remove rfm:trash_time
bossbar add rfm:trash_time [{"text":"垃圾分类督导","color":"green"}]
bossbar set rfm:trash_time color green
bossbar set rfm:trash_time visible false

#生态行动905“清洁能源检查”倒计时
bossbar remove rfm:energy_time
bossbar add rfm:energy_time [{"text":"清洁能源检查","color":"yellow"}]
bossbar set rfm:energy_time color green
bossbar set rfm:energy_time visible false

#经济行动701“市场调研”倒计时
bossbar remove rfm:market_time
bossbar add rfm:market_time [{"text":"市场调研","color":"yellow"}]
bossbar set rfm:market_time color yellow
bossbar set rfm:market_time visible false

#经济行动702“招商洽谈”倒计时
bossbar remove rfm:negotiation_time
bossbar add rfm:negotiation_time [{"text":"招商洽谈","color":"yellow"}]
bossbar set rfm:negotiation_time color yellow
bossbar set rfm:negotiation_time visible false

#经济行动703“预算核查”倒计时
bossbar remove rfm:audit_time
bossbar add rfm:audit_time [{"text":"预算核查","color":"yellow"}]
bossbar set rfm:audit_time color yellow
bossbar set rfm:audit_time visible false

#经济行动704“商圈巡查”倒计时
bossbar remove rfm:supply_time
bossbar add rfm:supply_time [{"text":"商圈巡查","color":"yellow"}]
bossbar set rfm:supply_time color yellow
bossbar set rfm:supply_time visible false

#经济行动705“就业走访”倒计时
bossbar remove rfm:employment_time
bossbar add rfm:employment_time [{"text":"就业走访","color":"yellow"}]
bossbar set rfm:employment_time color yellow
bossbar set rfm:employment_time visible false

#民生行动801“医院排队疏导”倒计时
bossbar remove rfm:hospital_time
bossbar add rfm:hospital_time [{"text":"医院排队疏导","color":"red"}]
bossbar set rfm:hospital_time color red
bossbar set rfm:hospital_time visible false

#民生行动802“全民健身挑战”倒计时
bossbar remove rfm:fitness_time
bossbar add rfm:fitness_time [{"text":"全民健身挑战","color":"red"}]
bossbar set rfm:fitness_time color red
bossbar set rfm:fitness_time visible false

#民生行动803“课间操领队”倒计时
bossbar remove rfm:exercise_time
bossbar add rfm:exercise_time [{"text":"课间操领队","color":"red"}]
bossbar set rfm:exercise_time color red
bossbar set rfm:exercise_time visible false

#民生行动804“公交站调度”倒计时
bossbar remove rfm:bus_time
bossbar add rfm:bus_time [{"text":"公交站调度","color":"red"}]
bossbar set rfm:bus_time color red
bossbar set rfm:bus_time visible false

#民生行动805“井盖安全巡检”倒计时
bossbar remove rfm:manhole_time
bossbar add rfm:manhole_time [{"text":"井盖安全巡检","color":"red"}]
bossbar set rfm:manhole_time color red
bossbar set rfm:manhole_time visible false
#—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
#启动低频属性显示循环
schedule function rfm:display/display 1t replace


say "加载完毕"

