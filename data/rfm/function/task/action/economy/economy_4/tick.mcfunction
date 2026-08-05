scoreboard players remove @s supply_time 1
execute store result bossbar rfm:supply_time value run scoreboard players get @s supply_time

function rfm:task/action/economy/economy_4/check
bossbar set rfm:supply_time name [{"text":"","font":"minecraft:default"},{"text":"\uE217","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE229","font":"rfm:bossbar"},{"text":"商圈巡查 · 补货进度 ","color":"yellow"},{"score":{"name":"@s","objective":"supply_completed"},"color":"green","bold":true},{"text":" / 5","color":"yellow"}]
execute if score @s supply_state matches 1 if score @s supply_completed matches 5 run function rfm:task/action/economy/economy_4/result
execute if score @s supply_state matches 1 if score @s supply_time matches ..0 run function rfm:task/action/economy/economy_4/result
