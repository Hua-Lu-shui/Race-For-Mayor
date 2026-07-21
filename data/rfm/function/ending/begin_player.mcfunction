#当前函数以正在结算的候选人为@s
scoreboard players set #room_found settle_value 1
tag @a remove rfm_settling
tag @s add rfm_settling
title @a times 0 35 0
title @a subtitle {"selector":"@s"}
tellraw @a [{"text":"开始统计候选人 ","color":"gray"},{"selector":"@s","color":"white","bold":true},{"text":" 的票数。","color":"gray"}]
function rfm:ending/count/start_fame
