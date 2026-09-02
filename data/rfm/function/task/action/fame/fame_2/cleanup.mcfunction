bossbar set rfm:visit_time visible false
clear @s minecraft:paper[minecraft:custom_data={visit_ready:1}]
clear @s minecraft:written_book[minecraft:custom_data~{rfm_visit_book:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{visit_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_visit_book:1}}}}]

scoreboard players set @s visit_route 0
scoreboard players set @s visit_step 0
scoreboard players set @s visit_target 0
scoreboard players set @s visit_answer 0
scoreboard players set @s visit_wrong 0
scoreboard players set @s visit_time 0
scoreboard players set @s visit_delay 0
scoreboard players set @s visit_state 0
function rfm:task/action/sequence/complete_current
