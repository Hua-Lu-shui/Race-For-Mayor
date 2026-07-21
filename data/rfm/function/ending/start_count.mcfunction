#结束黑屏并开始按办公室编号统计候选人票数
function rfm:attribute/weight_minimum
effect clear @a minecraft:blindness
effect clear @a minecraft:darkness
scoreboard players set #settle_state settle_state 3
scoreboard players set #settle_room settle_room 0
scoreboard players set @a final_votes 0
scoreboard objectives setdisplay sidebar final_votes
execute as @a run function rfm:ending/calculate
title @a times 5 50 10
title @a title {"text":"最终票数统计","color":"gold","bold":true}
title @a subtitle {"text":"将按照办公室分配顺序依次公布","color":"gray"}
tellraw @a {"text":"所有候选人已抵达市政厅。最终票数统计现在开始。","color":"light_purple","bold":true}
schedule function rfm:ending/next_player 50t replace
