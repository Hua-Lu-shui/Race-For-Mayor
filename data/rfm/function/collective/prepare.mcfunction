#第4、8回合属性公示后的第一阶段：在办公室等待全员准备进入令牌争夺
scoreboard players set #group_state group_state 3
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] group_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
clear @a[tag=rfm_participant] minecraft:clock[minecraft:custom_data={next_round_ready:1}]
clear @a[tag=rfm_participant] minecraft:name_tag[minecraft:custom_data={collective_venue_ready:1}]
clear @a[tag=rfm_participant] minecraft:paper[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_venue_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
item replace entity @a[tag=rfm_participant] hotbar.4 with minecraft:name_tag[minecraft:custom_name='{"translate":"rfm.text.745f545f9f13","color":"#C6A8FF","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.73c97e4677a3","color":"gray","italic":false}'],minecraft:custom_data={collective_venue_ready:1}] 1
title @a[tag=rfm_participant] title {"translate":"rfm.text.b1ef853ec5cb","color":"#C6A8FF","bold":true}
title @a[tag=rfm_participant] subtitle {"translate":"rfm.text.67052f3437cc","color":"white"}
