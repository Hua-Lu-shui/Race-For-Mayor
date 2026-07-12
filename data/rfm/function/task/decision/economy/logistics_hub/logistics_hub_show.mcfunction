scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】物流园区","color":"gold","bold":true}
tellraw @s {"text":"一家物流企业想在城市边缘建设分拨中心，能创造就业和税收，但周边居民担心噪音和交通压力。","color":"white"}
tellraw @s [{"text":"[激进] 快速批准园区","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 附带交通降噪条件","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 暂停审批重新选址","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
