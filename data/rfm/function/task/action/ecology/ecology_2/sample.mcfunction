#消耗水样，记录进度，并给予下一个空瓶
clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] 1
scoreboard players add @s sample_progress 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
bossbar set rfm:sample_time name [{"translate":"rfm.text.98e59f85a64d","color":"aqua"},{"score":{"name":"@s","objective":"sample_progress"},"color":"gold"},{"text":" / 6","color":"aqua"}]

execute if score @s sample_progress matches ..5 run give @s minecraft:glass_bottle 1
execute if score @s sample_progress matches 6.. run function rfm:task/action/ecology/ecology_2/result
