scoreboard players remove @s audit_time 1
execute store result bossbar rfm:audit_time value run scoreboard players get @s audit_time
bossbar set rfm:audit_time name [{"text":"","font":"minecraft:default"},{"text":"\uE214","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE22C","font":"rfm:bossbar"},{"text":"预算核查 · 找出虚假账本","color":"yellow"}]

#读取扔到财政负责人附近的任务账本
execute positioned 164 -58 18 if score @s audit_answer matches 0 if entity @e[type=minecraft:item,distance=..2.5,limit=1,nbt={Item:{components:{"minecraft:custom_data":{rfm_audit_book:1,audit_slot:1}}}}] run scoreboard players set @s audit_answer 1
execute positioned 164 -58 18 if score @s audit_answer matches 0 if entity @e[type=minecraft:item,distance=..2.5,limit=1,nbt={Item:{components:{"minecraft:custom_data":{rfm_audit_book:1,audit_slot:2}}}}] run scoreboard players set @s audit_answer 2
execute positioned 164 -58 18 if score @s audit_answer matches 0 if entity @e[type=minecraft:item,distance=..2.5,limit=1,nbt={Item:{components:{"minecraft:custom_data":{rfm_audit_book:1,audit_slot:3}}}}] run scoreboard players set @s audit_answer 3
execute positioned 164 -58 18 if score @s audit_answer matches 1.. run kill @e[type=minecraft:item,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{rfm_audit_book:1}}}}]
execute if score @s audit_answer matches 1.. run function rfm:task/action/economy/economy_3/check

execute if score @s audit_state matches 1 if score @s audit_time matches ..0 run function rfm:task/action/economy/economy_3/result
