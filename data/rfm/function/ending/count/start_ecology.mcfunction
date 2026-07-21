scoreboard players set #vote_stage settle_value 4
scoreboard players operation #vote_target settle_value = @a[tag=rfm_settling,limit=1] vote_ecology
scoreboard players set #vote_shown settle_value 0
title @a title [{"text":"生态票数：","color":"green","bold":true},{"score":{"name":"#vote_shown","objective":"settle_value"},"color":"white","bold":true}]
schedule function rfm:ending/count/tick 5t replace
