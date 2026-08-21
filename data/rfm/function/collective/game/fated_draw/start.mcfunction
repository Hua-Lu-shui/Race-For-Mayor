#全员准备完成：按最终在线人数重新生成纸条并进入锁位倒计时
scoreboard players set #group_state group_state 5
scoreboard players set @a[tag=rfm_participant] group_score 0
scoreboard players set @a[tag=rfm_participant] group_rank 0
scoreboard players set @a[tag=rfm_participant] group_finished 0
clear @a[tag=rfm_participant] minecraft:map[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
execute store result score #online_total player_count run execute if entity @a[tag=rfm_participant]
function rfm:collective/game/fated_draw/create_slips
execute as @a[tag=rfm_participant] run function rfm:collective/game/fated_draw/lock_position
title @a[tag=rfm_participant] title {"text":"命中注定","color":"gold","bold":true}
title @a[tag=rfm_participant] subtitle {"text":"准备抽签","color":"white"}
schedule function rfm:collective/game/fated_draw/countdown_3 20t replace
