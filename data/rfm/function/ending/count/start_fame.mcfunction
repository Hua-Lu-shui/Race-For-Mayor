scoreboard players set #vote_stage settle_value 1
scoreboard players operation #vote_target settle_value = @a[tag=rfm_participant,tag=rfm_settling,limit=1] vote_fame
scoreboard players set #vote_shown settle_value 0
title @a[tag=rfm_participant] title [{"translate":"rfm.text.acef4d66aeb4","color":"aqua","bold":true},{"score":{"name":"#vote_shown","objective":"settle_value"},"color":"white","bold":true}]
schedule function rfm:ending/count/tick 5t replace
