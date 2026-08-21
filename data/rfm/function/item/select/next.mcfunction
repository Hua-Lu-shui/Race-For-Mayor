#寻找当前名次的玩家；离线玩家自动跳过，超过最终名次数量后结束选择
scoreboard players set #picker_found item_selecting 0
execute as @a[tag=rfm_participant] if score @s group_rank = #current_picker item_selecting run function rfm:item/select/offer
execute if score #picker_found item_selecting matches 0 if score #current_picker item_selecting <= #rank group_rank run return run function rfm:item/select/missing
execute if score #picker_found item_selecting matches 0 if score #current_picker item_selecting > #rank group_rank run function rfm:item/select/finish
