scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
#显示任务背景以及选项
tellraw @s {"text":"【经济决策】税收政策","color":"gold","bold":true}

tellraw @s {"text":"市政府财政紧张，商业协会希望降低税率来刺激投资，公共服务部门则要求增加收入维持运转。你需要决定本轮税收政策。","color":"white"}

tellraw @s [{"text":"[高税率] 提高商业税","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[中税率] 稳定税率","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[低税率] 减税刺激","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]