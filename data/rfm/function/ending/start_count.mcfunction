#摘下转场南瓜头并开始按办公室编号统计候选人票数
function rfm:attribute/weight_minimum
clear @a minecraft:carved_pumpkin[minecraft:custom_data~{rfm_ending_blackout:1}]
scoreboard players set #settle_state settle_state 3
scoreboard players set #settle_room settle_room 0
scoreboard players set @a final_votes 0
scoreboard objectives setdisplay sidebar final_votes
#最终藏品效果结算前固定四项全场最低值，避免逐人结算产生先后顺序干扰
execute as @a run function rfm:attribute/lock/enforce
scoreboard players set #final_lowest_fame fame 2147483647
scoreboard players set #final_lowest_economy economy 2147483647
scoreboard players set #final_lowest_welfare welfare 2147483647
scoreboard players set #final_lowest_ecology ecology 2147483647
execute as @a if score @s fame < #final_lowest_fame fame run scoreboard players operation #final_lowest_fame fame = @s fame
execute as @a if score @s economy < #final_lowest_economy economy run scoreboard players operation #final_lowest_economy economy = @s economy
execute as @a if score @s welfare < #final_lowest_welfare welfare run scoreboard players operation #final_lowest_welfare welfare = @s welfare
execute as @a if score @s ecology < #final_lowest_ecology ecology run scoreboard players operation #final_lowest_ecology ecology = @s ecology
execute as @a run function rfm:ending/calculate
title @a times 5 50 10
title @a title {"text":"最终票数统计","color":"gold","bold":true}
tellraw @a {"text":"所有候选人已抵达市政厅。最终票数统计现在开始。","color":"light_purple","bold":true}
schedule function rfm:ending/next_player 50t replace
