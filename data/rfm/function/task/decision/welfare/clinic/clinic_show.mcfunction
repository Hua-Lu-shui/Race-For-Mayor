#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】社区诊所","color":"gold","bold":true}
tellraw @s {"text":"城北居民看病距离远，希望增设社区诊所。卫生部门支持，但运营经费需要长期投入。","color":"white"}
tellraw @s [{"text":"[激进] 新建多处诊所","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 先开设流动门诊","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 只增加预约班次","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
