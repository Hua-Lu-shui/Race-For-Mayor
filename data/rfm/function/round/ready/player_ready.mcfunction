#记录当前玩家已为下一回合做好准备
scoreboard players set @s next_round_ready 1
scoreboard players set @s next_round_clock 0
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 1.2
clear @s minecraft:clock[minecraft:custom_data={next_round_ready:1}]
#直接丢出时钟代表本回合不使用令牌：收回实体令牌，但保留持有记录供下一回合再次发放
clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
execute at @s run kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
