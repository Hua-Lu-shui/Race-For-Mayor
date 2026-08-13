#第4、8回合属性公示后的第一阶段：在办公室等待全员准备进入令牌争夺
scoreboard players set #group_state group_state 3
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a group_ready 0
scoreboard players set @a next_round_clock 0
clear @a minecraft:clock[minecraft:custom_data={next_round_ready:1}]
clear @a minecraft:name_tag[minecraft:custom_data={collective_venue_ready:1}]
clear @a minecraft:map[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_venue_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
item replace entity @a hotbar.4 with minecraft:name_tag[minecraft:custom_name='{"text":"准备令牌争夺","color":"#C6A8FF","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出；全员准备后传送至小游戏场地","color":"gray","italic":false}'],minecraft:custom_data={collective_venue_ready:1}] 1
title @a title {"text":"令牌争夺即将开始","color":"#C6A8FF","bold":true}
title @a subtitle {"text":"丢出“准备令牌争夺”命名牌以完成准备","color":"white"}
