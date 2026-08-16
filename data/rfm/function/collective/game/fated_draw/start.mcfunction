#全员准备完成：按最终在线人数重新生成纸条并进入锁位倒计时
scoreboard players set #group_state group_state 5
scoreboard players set @a group_score 0
scoreboard players set @a group_rank 0
scoreboard players set @a group_finished 0
clear @a minecraft:map[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
execute store result score #online_total player_count run execute if entity @a
function rfm:collective/game/fated_draw/create_slips
execute as @a run function rfm:collective/game/fated_draw/lock_position
title @a title {"text":"命中注定","color":"gold","bold":true}
title @a subtitle {"text":"准备抽签","color":"white"}
schedule function rfm:collective/game/fated_draw/countdown_3 20t replace
