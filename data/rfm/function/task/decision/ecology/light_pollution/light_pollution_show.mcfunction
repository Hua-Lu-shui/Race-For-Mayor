#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【生态决策】夜间光污染","color":"gold","bold":true}
tellraw @s {"text":"居民反映广告屏和景观灯彻夜照明，影响睡眠与夜行动物。商圈则认为明亮街景能吸引客流并提升安全感。","color":"white"}
tellraw @s [{"text":"[激进] 深夜强制关闭广告与景观灯","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 居住区限时并统一调暗","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 只发布自愿节制倡议","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
