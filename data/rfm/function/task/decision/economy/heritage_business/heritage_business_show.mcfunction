#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】老字号接班","color":"gold","bold":true}
tellraw @s {"text":"多家经营数十年的老店因店主年迈面临停业，年轻人又不愿承担高昂的接班成本。商会请求市政府介入传承。","color":"white"}
tellraw @s [{"text":"[激进] 成立公营公司整体接管","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 补助师徒结对和店面改造","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 允许无力经营的店铺退场","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
