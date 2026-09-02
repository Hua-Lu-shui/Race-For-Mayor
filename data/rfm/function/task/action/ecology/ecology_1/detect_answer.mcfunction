execute if score @s emission_answer matches 0 if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_id:1}}}}] run scoreboard players set @s emission_answer 1
execute if score @s emission_answer matches 0 if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_id:2}}}}] run scoreboard players set @s emission_answer 2
execute if score @s emission_answer matches 0 if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_id:3}}}}] run scoreboard players set @s emission_answer 3
execute if score @s emission_answer matches 0 if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_id:4}}}}] run scoreboard players set @s emission_answer 4
execute if score @s emission_answer matches 0 if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_id:5}}}}] run scoreboard players set @s emission_answer 5
execute if score @s emission_answer matches 0 if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_id:6}}}}] run scoreboard players set @s emission_answer 6
execute if score @s emission_answer matches 0 if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_id:7}}}}] run scoreboard players set @s emission_answer 7
execute if score @s emission_answer matches 0 if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_id:8}}}}] run scoreboard players set @s emission_answer 8
execute if score @s emission_answer matches 0 if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_id:9}}}}] run scoreboard players set @s emission_answer 9

execute if score @s emission_answer matches 1..9 run function rfm:task/action/ecology/ecology_1/check_answer
