scoreboard players set #picker_found item_selecting 1
#尚未点击互换目标的玩家不能再领取新令牌
execute if score @s swap_pending matches 1..4 run return run function rfm:item/select/skip_pending
#仍持有上次令牌的玩家跳过本次选择；旧版锁定令牌不再阻塞选择
execute if score @s item_held matches 1..24 run return run function rfm:item/select/skip

scoreboard players set @s item_selecting 1
scoreboard players set @s item_pick 0
scoreboard players enable @s item_pick
tp @s 56 -59 -46 180 0
title @s title [{"translate":"rfm.text.ba376d7e40b9","color":"white"},{"translate":"rfm.text.3b811588971b","color":"#C6A8FF","bold":true}]
