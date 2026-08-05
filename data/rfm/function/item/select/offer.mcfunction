scoreboard players set #picker_found item_selecting 1
#尚未点击互换目标的玩家不能再领取新令牌
execute if score @s swap_pending matches 1..4 run return run function rfm:item/select/skip_pending
#仍持有上次令牌的玩家跳过本次选择
execute if score @s item_held matches 1..24 run return run function rfm:item/select/skip

scoreboard players set @s item_selecting 1
scoreboard players set @s item_pick 0
scoreboard players enable @s item_pick
tp @s 1240 -59 104 180 0
title @s title [{"text":"轮到你选择","color":"white"},{"text":"令牌","color":"#C6A8FF","bold":true}]
title @s subtitle [{"text":"查看告示牌并","color":"white"},{"text":"右键选择","color":"#67D5FF"},{"text":"；其他玩家不会知道你的选择","color":"white"}]
tellraw @s [{"text":"你只能选择一枚尚未被拿走的","color":"white"},{"text":"令牌","color":"#C6A8FF","bold":true},{"text":"。右键告示牌后，令牌将在","color":"white"},{"text":"下一回合","color":"#FFCB77"},{"text":"准备时钟发放时交给你。","color":"white"}]
