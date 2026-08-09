#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】地下空间招商","color":"gold","bold":true}
tellraw @s {"text":"旧车站下方有一片长期闲置的地下空间。改造后可以经营商业项目，但通风、疏散与能耗成本都高于地面建筑。","color":"white"}
tellraw @s [{"text":"[激进] 改造成大型地下商业街","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 周末开放小型创意市集","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 封存并保留应急用途","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
