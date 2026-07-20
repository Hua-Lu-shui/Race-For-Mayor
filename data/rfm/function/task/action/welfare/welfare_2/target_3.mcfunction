#记录第三个标靶
scoreboard players set @s fitness_target_3 1
tellraw @s {"text":"命中标靶 3 / 3","color":"aqua","bold":true}
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.6 1
function rfm:task/action/welfare/welfare_2/check_targets
