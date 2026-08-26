#在玩家到达前搭建操场并生成学生和动作标签
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
function rfm:task/action/welfare/welfare_3/create_labels

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s exercise_round 1
scoreboard players set @s exercise_length 4
scoreboard players set @s exercise_input 0
scoreboard players set @s exercise_answer 0
scoreboard players set @s exercise_target 0
scoreboard players set @s exercise_wrong 0
scoreboard players set @s exercise_time 0
scoreboard players set @s exercise_state 2
scoreboard players set @s exercise_delay 0
scoreboard players set @s exercise_armed 0
scoreboard players set @s exercise_preview 0

#其他玩家在操场上方观战，行动玩家站在四色踏板中央
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 206 -54 -65 180 30
tp @s 206 -59 -65 0 0

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.eca9c1f7ff80","color":"red","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.375637864165","color":"white"},{"translate":"rfm.text.9e20323239e6","color":"#67D5FF","bold":true},{"translate":"rfm.text.0c24e70ea0d6","color":"white"},{"translate":"rfm.text.6003b7618a21","color":"#FFCB77"},{"translate":"rfm.text.b033d9564ae5","color":"white"},{"translate":"rfm.text.6d7be5426e25","color":"#FFCB77"},{"translate":"rfm.text.3b91b2f7d34e","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.364035c34322","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"red","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={exercise_ready:1}] 1
