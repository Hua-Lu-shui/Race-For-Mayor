#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】媒体专访","color":"gold","bold":true}
tellraw @s {"text":"本地电视台邀请你参加黄金时段专访。主持人准备追问城市财政、民生投诉和竞选承诺。一次成功的表现能提升公众形象，但回答不慎也可能引发争议。","color":"white"}
tellraw @s [{"text":"[激进] 高调承诺大规模改革","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 稳健回应具体问题","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 回避尖锐话题","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
