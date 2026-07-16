#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】保障住房","color":"gold","bold":true}
tellraw @s {"text":"房租上涨让年轻家庭和低收入居民压力很大，社区希望政府建设保障住房。开发商则担心土地供应变化影响商业项目。你需要决定住房政策。","color":"white"}

tellraw @s [{"text":"[激进] 大规模建设保障住房","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[折中] 提供租房补贴和限价房","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[保守] 维持市场调节为主","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
