#记录第一个标靶
scoreboard players set @s fitness_target_1 1
tellraw @s {"text":"命中标靶 1 / 3","color":"aqua","bold":true}
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.2 1
function rfm:task/action/welfare/welfare_2/check_targets
