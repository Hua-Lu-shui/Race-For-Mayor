#全员完成第二阶段准备后启动城市议题响应赛
scoreboard players set #group_state group_state 2
scoreboard players set #group_prompt group_prompt 0
scoreboard players set @a group_score 0
scoreboard players set @a group_rank 0
scoreboard players set @a group_answered 0
scoreboard players set @a group_wrong 0
clear @a minecraft:map[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
tp @a 1100 -59 100 0 0
title @a title [{"text":"准备","color":"white"},{"text":"响应","color":"#67D5FF","bold":true}]
title @a subtitle [{"text":"名誉","color":"aqua"},{"text":" · ","color":"gray"},{"text":"经济","color":"yellow"},{"text":" · ","color":"gray"},{"text":"民生","color":"red"},{"text":" · ","color":"gray"},{"text":"生态","color":"green"}]
schedule function rfm:collective/countdown_3 60t replace
