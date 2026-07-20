#记录第二个标靶
scoreboard players set @s fitness_target_2 1
tellraw @s {"text":"命中标靶 2 / 3","color":"aqua","bold":true}
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.4 1
function rfm:task/action/welfare/welfare_2/check_targets
