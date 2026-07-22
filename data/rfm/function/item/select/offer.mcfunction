scoreboard players set #picker_found item_selecting 1
#尚未点击互换目标的玩家不能再领取新道具
execute if score @s swap_pending matches 1..4 run return run function rfm:item/select/skip_pending
#仍持有上次道具的玩家跳过本次选择
execute if score @s item_held matches 1..24 run return run function rfm:item/select/skip

scoreboard players set @s item_selecting 1
scoreboard players set @s item_pick 0
scoreboard players enable @s item_pick
tp @s 1240 -59 104 180 0
title @s title {"text":"轮到你选择道具","color":"gold","bold":true}
title @s subtitle {"text":"查看告示牌并右键选择；其他玩家不会知道你的选择","color":"gray"}
tellraw @s {"text":"你只能选择一件尚未被拿走的道具。右键告示牌后，道具将在下一轮准备时钟发放时交给你。","color":"yellow"}
