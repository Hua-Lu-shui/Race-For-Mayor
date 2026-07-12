scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【生态决策】城市公园","color":"gold","bold":true}
tellraw @s {"text":"市民希望在老城区增加公共绿地，但可用土地十分有限。规划部门提出把一片旧仓储区改造成公园，商业团队则希望把那里开发成综合商场。你需要决定土地用途。","color":"white"}

tellraw @s [{"text":"[激进] 全部改造成城市公园","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[折中] 建设公园和小型商业街","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[保守] 优先开发综合商场","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
