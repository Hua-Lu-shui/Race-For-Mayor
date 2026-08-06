scoreboard players remove @s visit_time 1
execute store result bossbar rfm:visit_time value run scoreboard players get @s visit_time
bossbar set rfm:visit_time name [{"text":"社区拜访 · 已完成 ","color":"aqua"},{"score":{"name":"@s","objective":"visit_step"},"color":"white"},{"text":" / 5 · 当前门牌 ","color":"aqua"},{"score":{"name":"@s","objective":"visit_target"},"color":"yellow"},{"text":" · 错误 ","color":"aqua"},{"score":{"name":"@s","objective":"visit_wrong"},"color":"red"}]

#读取十二户真实门铃
scoreboard players set @s visit_answer 0
execute if block 141 -57 -9 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 101
execute if block 141 -57 -15 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 102
execute if block 141 -57 -21 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 103
execute if block 141 -57 -27 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 104
execute if block 141 -51 -9 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 201
execute if block 141 -51 -15 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 202
execute if block 141 -51 -21 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 203
execute if block 141 -51 -27 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 204
execute if block 141 -45 -9 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 301
execute if block 141 -45 -15 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 302
execute if block 141 -45 -21 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 303
execute if block 141 -45 -27 minecraft:stone_button[powered=true] run scoreboard players set @s visit_answer 304
execute if score @s visit_answer matches 1.. run function rfm:task/action/fame/fame_2/check

execute if score @s visit_state matches 1 if score @s visit_time matches ..0 run function rfm:task/action/fame/fame_2/result
