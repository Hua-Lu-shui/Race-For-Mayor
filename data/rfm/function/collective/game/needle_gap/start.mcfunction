#全员准备完成：进入锁位倒计时，begin后才解除锁位并给予漂浮效果
scoreboard players set #group_state group_state 5
scoreboard players set #group_arrival group_arrival 0
scoreboard players set @a group_score 0
scoreboard players set @a group_rank 0
scoreboard players set @a group_finished 0
clear @a minecraft:map[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
effect clear @a minecraft:levitation
execute as @a run function rfm:collective/game/needle_gap/lock_position
title @a title {"text":"见缝插针","color":"light_purple","bold":true}
schedule function rfm:collective/game/needle_gap/countdown_3 20t replace
