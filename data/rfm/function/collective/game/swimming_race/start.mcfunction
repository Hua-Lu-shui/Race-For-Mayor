#全员准备完成：进入锁位倒计时，begin后才解除锁位
scoreboard players set #group_state group_state 5
scoreboard players set #group_arrival group_arrival 0
scoreboard players set @a group_score 0
scoreboard players set @a group_rank 0
scoreboard players set @a group_finished 0
clear @a minecraft:map[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
execute as @a run function rfm:collective/game/swimming_race/lock_position
title @a title {"text":"奋泳争先","color":"aqua","bold":true}
title @a subtitle {"text":"准备出发","color":"white"}
schedule function rfm:collective/game/swimming_race/countdown_3 20t replace
