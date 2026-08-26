execute unless score #session_online game_session = #session_size game_session run schedule function rfm:ending/start_count 20t replace
execute unless score #session_online game_session = #session_size game_session run return 0
#摘下转场南瓜头并开始按办公室编号统计候选人票数
function rfm:attribute/weight_minimum
clear @a[tag=rfm_participant] minecraft:carved_pumpkin[minecraft:custom_data~{rfm_ending_blackout:1}]
scoreboard players set #settle_state settle_state 3
scoreboard players set #settle_room settle_room 0
scoreboard players set @a[tag=rfm_participant] final_votes 0
scoreboard objectives setdisplay sidebar final_votes
#最终藏品效果结算前固定四项全场最低值，避免逐人结算产生先后顺序干扰
execute as @a[tag=rfm_participant] run function rfm:attribute/lock/enforce
scoreboard players set #final_lowest_fame fame 2147483647
scoreboard players set #final_lowest_economy economy 2147483647
scoreboard players set #final_lowest_welfare welfare 2147483647
scoreboard players set #final_lowest_ecology ecology 2147483647
scoreboard players operation #final_lowest_fame fame < @a[tag=rfm_participant] fame
scoreboard players operation #final_lowest_economy economy < @a[tag=rfm_participant] economy
scoreboard players operation #final_lowest_welfare welfare < @a[tag=rfm_participant] welfare
scoreboard players operation #final_lowest_ecology ecology < @a[tag=rfm_participant] ecology
execute as @a[tag=rfm_participant] run function rfm:ending/calculate
title @a[tag=rfm_participant] times 5 50 10
title @a[tag=rfm_participant] title {"translate":"rfm.text.adfb7a009b5b","color":"gold","bold":true}
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.7645f4f2b711","color":"light_purple","bold":true}
schedule function rfm:ending/next_player 50t replace
