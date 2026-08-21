#读取当前预览位置对应的动作
scoreboard players set @s exercise_target 0
execute if score @s exercise_preview matches 1 run scoreboard players operation @s exercise_target = @s exercise_step_1
execute if score @s exercise_preview matches 2 run scoreboard players operation @s exercise_target = @s exercise_step_2
execute if score @s exercise_preview matches 3 run scoreboard players operation @s exercise_target = @s exercise_step_3
execute if score @s exercise_preview matches 4 run scoreboard players operation @s exercise_target = @s exercise_step_4
execute if score @s exercise_preview matches 5 run scoreboard players operation @s exercise_target = @s exercise_step_5
execute if score @s exercise_preview matches 6 run scoreboard players operation @s exercise_target = @s exercise_step_6

execute if score @s exercise_target matches 1 run title @a[tag=rfm_participant] title {"text":"跳跃","color":"red","bold":true}
execute if score @s exercise_target matches 1 run playsound minecraft:block.note_block.harp master @a[tag=rfm_participant] ~ ~ ~ 1 0.8 1
execute if score @s exercise_target matches 2 run title @a[tag=rfm_participant] title {"text":"伸展","color":"yellow","bold":true}
execute if score @s exercise_target matches 2 run playsound minecraft:block.note_block.harp master @a[tag=rfm_participant] ~ ~ ~ 1 1.0 1
execute if score @s exercise_target matches 3 run title @a[tag=rfm_participant] title {"text":"转体","color":"green","bold":true}
execute if score @s exercise_target matches 3 run playsound minecraft:block.note_block.harp master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
execute if score @s exercise_target matches 4 run title @a[tag=rfm_participant] title {"text":"整理","color":"blue","bold":true}
execute if score @s exercise_target matches 4 run playsound minecraft:block.note_block.harp master @a[tag=rfm_participant] ~ ~ ~ 1 1.4 1

title @a[tag=rfm_participant] subtitle [{"text":"动作 ","color":"gray"},{"score":{"name":"@s","objective":"exercise_preview"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"exercise_length"},"color":"white"}]
