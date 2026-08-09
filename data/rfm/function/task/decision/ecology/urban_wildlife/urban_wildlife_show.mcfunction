#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【生态决策】城市野生动物","color":"gold","bold":true}
tellraw @s {"text":"狐狸和野猪开始频繁进入住宅区觅食，部分居民担心安全，也有人希望城市为野生动物保留生存通道。","color":"white"}
tellraw @s [{"text":"[激进] 建设生态廊道并封闭垃圾源","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 组建专业诱捕迁移队","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 允许高风险区域直接驱除","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
