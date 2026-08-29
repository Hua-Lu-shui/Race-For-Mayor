scoreboard players remove @s audit_time 1
execute store result bossbar rfm:audit_time value run scoreboard players get @s audit_time
bossbar set rfm:audit_time name [{"translate":"rfm.text.f3d452e3ff52","color":"yellow"}]

#读取扔到财政负责人附近的任务账本；排除/give成功入包时生成的拾取动画假实体
execute positioned 164 -58 18 if score @s audit_answer matches 0 if entity @e[type=minecraft:item,distance=..2.5,limit=1,nbt={Item:{components:{"minecraft:custom_data":{rfm_audit_book:1,audit_slot:1}}}},nbt=!{Age:5999s,PickupDelay:32767s}] run scoreboard players set @s audit_answer 1
execute positioned 164 -58 18 if score @s audit_answer matches 0 if entity @e[type=minecraft:item,distance=..2.5,limit=1,nbt={Item:{components:{"minecraft:custom_data":{rfm_audit_book:1,audit_slot:2}}}},nbt=!{Age:5999s,PickupDelay:32767s}] run scoreboard players set @s audit_answer 2
execute positioned 164 -58 18 if score @s audit_answer matches 0 if entity @e[type=minecraft:item,distance=..2.5,limit=1,nbt={Item:{components:{"minecraft:custom_data":{rfm_audit_book:1,audit_slot:3}}}},nbt=!{Age:5999s,PickupDelay:32767s}] run scoreboard players set @s audit_answer 3
execute positioned 164 -58 18 if score @s audit_answer matches 1.. run kill @e[type=minecraft:item,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{rfm_audit_book:1}}}},nbt=!{Age:5999s,PickupDelay:32767s}]
execute if score @s audit_answer matches 1.. run function rfm:task/action/economy/economy_3/check

execute if score @s audit_state matches 1 if score @s audit_time matches ..0 run function rfm:task/action/economy/economy_3/result
