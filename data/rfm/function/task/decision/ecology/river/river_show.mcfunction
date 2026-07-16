#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【生态决策】河道治理","color":"gold","bold":true}
tellraw @s {"text":"穿城河水质变差，沿岸居民要求尽快治理。水务部门提出清淤和截污工程，但施工会影响交通和沿岸商铺经营。你需要决定治理方案。","color":"white"}

tellraw @s [{"text":"[激进] 全线清淤并关闭污染排口","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[折中] 先治理重点河段","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[保守] 推迟工程，仅加强巡查","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
