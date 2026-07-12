scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【生态决策】自行车道","color":"gold","bold":true}
tellraw @s {"text":"城市短途通勤拥堵严重，规划部门建议增设自行车道。机动车车主和沿街商户都提出反对。","color":"white"}
tellraw @s [{"text":"[激进] 大规模改造车道","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 先连通重点路段","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 只增设停车点","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
