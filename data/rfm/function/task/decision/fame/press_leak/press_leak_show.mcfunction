#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】内部文件泄露","color":"gold","bold":true}
tellraw @s {"text":"一份未定稿政策文件被媒体提前曝光，里面有几项容易引发误解的措辞。你需要控制舆论损失。","color":"white"}
tellraw @s [{"text":"[激进] 公开全过程说明","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 修订文件后再说明","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 追查泄露源头优先","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
