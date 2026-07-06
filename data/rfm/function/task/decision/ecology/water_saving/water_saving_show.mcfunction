tellraw @s {"text":"【生态决策】节水改造","color":"gold","bold":true}
tellraw @s {"text":"夏季用水压力上升，供水部门建议推广节水器具和阶梯水价。居民担心生活成本增加。","color":"white"}
tellraw @s [{"text":"[激进] 强推阶梯水价","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/water_saving/water_saving_a"}}]
tellraw @s [{"text":"[折中] 补贴节水设备","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/water_saving/water_saving_b"}}]
tellraw @s [{"text":"[保守] 只发布节水倡议","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/ecology/water_saving/water_saving_c"}}]
