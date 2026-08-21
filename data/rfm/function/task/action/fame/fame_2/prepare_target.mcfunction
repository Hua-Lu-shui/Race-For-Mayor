#根据路线编号和当前进度设置下一户门牌
scoreboard players set @s visit_target 0
execute if score @s visit_route matches 1 if score @s visit_step matches 0 run scoreboard players set @s visit_target 104
execute if score @s visit_route matches 1 if score @s visit_step matches 1 run scoreboard players set @s visit_target 202
execute if score @s visit_route matches 1 if score @s visit_step matches 2 run scoreboard players set @s visit_target 304
execute if score @s visit_route matches 1 if score @s visit_step matches 3 run scoreboard players set @s visit_target 301
execute if score @s visit_route matches 1 if score @s visit_step matches 4 run scoreboard players set @s visit_target 204
execute if score @s visit_route matches 2 if score @s visit_step matches 0 run scoreboard players set @s visit_target 102
execute if score @s visit_route matches 2 if score @s visit_step matches 1 run scoreboard players set @s visit_target 303
execute if score @s visit_route matches 2 if score @s visit_step matches 2 run scoreboard players set @s visit_target 201
execute if score @s visit_route matches 2 if score @s visit_step matches 3 run scoreboard players set @s visit_target 204
execute if score @s visit_route matches 2 if score @s visit_step matches 4 run scoreboard players set @s visit_target 302
execute if score @s visit_route matches 3 if score @s visit_step matches 0 run scoreboard players set @s visit_target 103
execute if score @s visit_route matches 3 if score @s visit_step matches 1 run scoreboard players set @s visit_target 201
execute if score @s visit_route matches 3 if score @s visit_step matches 2 run scoreboard players set @s visit_target 304
execute if score @s visit_route matches 3 if score @s visit_step matches 3 run scoreboard players set @s visit_target 202
execute if score @s visit_route matches 3 if score @s visit_step matches 4 run scoreboard players set @s visit_target 301
execute if score @s visit_route matches 4 if score @s visit_step matches 0 run scoreboard players set @s visit_target 101
execute if score @s visit_route matches 4 if score @s visit_step matches 1 run scoreboard players set @s visit_target 203
execute if score @s visit_route matches 4 if score @s visit_step matches 2 run scoreboard players set @s visit_target 302
execute if score @s visit_route matches 4 if score @s visit_step matches 3 run scoreboard players set @s visit_target 104
execute if score @s visit_route matches 4 if score @s visit_step matches 4 run scoreboard players set @s visit_target 204
execute if score @s visit_route matches 5 if score @s visit_step matches 0 run scoreboard players set @s visit_target 101
execute if score @s visit_route matches 5 if score @s visit_step matches 1 run scoreboard players set @s visit_target 304
execute if score @s visit_route matches 5 if score @s visit_step matches 2 run scoreboard players set @s visit_target 202
execute if score @s visit_route matches 5 if score @s visit_step matches 3 run scoreboard players set @s visit_target 303
execute if score @s visit_route matches 5 if score @s visit_step matches 4 run scoreboard players set @s visit_target 103
execute if score @s visit_route matches 6 if score @s visit_step matches 0 run scoreboard players set @s visit_target 104
execute if score @s visit_route matches 6 if score @s visit_step matches 1 run scoreboard players set @s visit_target 203
execute if score @s visit_route matches 6 if score @s visit_step matches 2 run scoreboard players set @s visit_target 302
execute if score @s visit_route matches 6 if score @s visit_step matches 3 run scoreboard players set @s visit_target 301
execute if score @s visit_route matches 6 if score @s visit_step matches 4 run scoreboard players set @s visit_target 204
tellraw @a[tag=rfm_participant] [{"text":"下一户：","color":"aqua","bold":true},{"score":{"name":"@s","objective":"visit_target"},"color":"white","bold":true}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4 1
