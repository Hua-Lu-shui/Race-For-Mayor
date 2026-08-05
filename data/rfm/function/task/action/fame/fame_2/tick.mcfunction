scoreboard players remove @s visit_time 1
execute store result bossbar rfm:visit_time value run scoreboard players get @s visit_time
bossbar set rfm:visit_time name [{"text":"","font":"minecraft:default"},{"text":"\uE224","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE21C","font":"rfm:bossbar"},{"text":"社区拜访 · 已完成 ","color":"aqua"},{"score":{"name":"@s","objective":"visit_step"},"color":"white"},{"text":" / 5 · 当前门牌 ","color":"aqua"},{"score":{"name":"@s","objective":"visit_target"},"color":"yellow"},{"text":" · 错误 ","color":"aqua"},{"score":{"name":"@s","objective":"visit_wrong"},"color":"red"}]

#读取十二户真实门铃
scoreboard players set @s visit_answer 0
execute if block 522 -60 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 101
execute if block 529 -60 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 102
execute if block 536 -60 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 103
execute if block 543 -60 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 104
execute if block 522 -54 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 201
execute if block 529 -54 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 202
execute if block 536 -54 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 203
execute if block 543 -54 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 204
execute if block 522 -48 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 301
execute if block 529 -48 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 302
execute if block 536 -48 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 303
execute if block 543 -48 102 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 304
execute if score @s visit_answer matches 1.. run function rfm:task/action/fame/fame_2/check

execute if score @s visit_state matches 1 if score @s visit_time matches ..0 run function rfm:task/action/fame/fame_2/result
