#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】谣言澄清会","color":"gold","bold":true}
tellraw @s {"text":"网络上出现你挪用活动经费的传言，虽然证据很弱，但传播速度很快。你需要决定回应力度。","color":"white"}
tellraw @s [{"text":"[激进] 召开发布会逐条反驳","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 公布账目让媒体核查","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 只做简短声明","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
