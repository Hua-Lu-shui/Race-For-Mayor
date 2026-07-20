#完成射箭段并打开通向跳水池的出口
scoreboard players set @s fitness_checkpoint 4
clear @s minecraft:bow[minecraft:custom_data={fitness_bow:1}]
clear @s minecraft:arrow
function rfm:task/action/welfare/welfare_2/open_exit
bossbar set rfm:fitness_time name [{"text":"全民健身挑战  ·  检查点 ","color":"red"},{"score":{"name":"@s","objective":"fitness_checkpoint"},"color":"yellow"},{"text":" / 5","color":"red"}]
title @s actionbar {"text":"检查点4完成：跳入水池并冲过终点","color":"green","bold":true}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2 1
