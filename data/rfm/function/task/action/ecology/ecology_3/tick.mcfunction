scoreboard players remove @s park_time 1
execute store result bossbar rfm:park_time value run scoreboard players get @s park_time

execute if score @s park_progress matches 0 positioned 188 -58 84 if entity @e[type=minecraft:item,distance=..2,limit=1,nbt={Item:{components:{"minecraft:custom_data":{park_check:1}}}}] run function rfm:task/action/ecology/ecology_3/check
execute if score @s park_progress matches 1 positioned 211 -58 77 if entity @e[type=minecraft:item,distance=..2,limit=1,nbt={Item:{components:{"minecraft:custom_data":{park_check:1}}}}] run function rfm:task/action/ecology/ecology_3/check
execute if score @s park_progress matches 2 positioned 189 -58 58 if entity @e[type=minecraft:item,distance=..2,limit=1,nbt={Item:{components:{"minecraft:custom_data":{park_check:1}}}}] run function rfm:task/action/ecology/ecology_3/check
execute if score @s park_progress matches 3 positioned 212 -58 65 if entity @e[type=minecraft:item,distance=..2,limit=1,nbt={Item:{components:{"minecraft:custom_data":{park_check:1}}}}] run function rfm:task/action/ecology/ecology_3/check
execute if score @s park_progress matches 4 positioned 187 -58 70 if entity @e[type=minecraft:item,distance=..2,limit=1,nbt={Item:{components:{"minecraft:custom_data":{park_check:1}}}}] run function rfm:task/action/ecology/ecology_3/check
execute if score @s park_progress matches 5 positioned 205 -57 70 if entity @e[type=minecraft:item,distance=..2,limit=1,nbt={Item:{components:{"minecraft:custom_data":{park_check:1}}}}] run function rfm:task/action/ecology/ecology_3/check

execute if score @s park_state matches 1 if score @s park_progress matches 6.. run function rfm:task/action/ecology/ecology_3/result
execute if score @s park_state matches 1 if score @s park_time matches ..0 run function rfm:task/action/ecology/ecology_3/result
