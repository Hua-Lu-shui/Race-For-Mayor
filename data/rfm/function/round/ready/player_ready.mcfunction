#记录当前玩家已为下一轮做好准备
scoreboard players set @s next_round_ready 1
scoreboard players set @s next_round_clock 0
clear @s minecraft:clock[minecraft:custom_data={next_round_ready:1}]
#直接丢出时钟代表本轮不使用道具：收回实体道具，但保留持有记录供下一轮再次发放
clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
execute at @s run kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
execute if score #round round matches 0 run tellraw @a [{"selector":"@s","color":"white"},{"text":" 已准备好开始第一轮。","color":"gray"}]
execute if score #round round matches 1.. run tellraw @a [{"selector":"@s","color":"white"},{"text":" 已准备好进入下一轮。","color":"gray"}]
