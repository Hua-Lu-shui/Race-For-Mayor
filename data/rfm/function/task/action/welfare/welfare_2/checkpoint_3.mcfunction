#到达射箭平台，发放弓箭
scoreboard players set @s fitness_checkpoint 3
scoreboard players set @s fitness_target_1 0
scoreboard players set @s fitness_target_2 0
scoreboard players set @s fitness_target_3 0
item replace entity @s hotbar.4 with minecraft:bow[minecraft:custom_name='{"text":"训练弓","color":"aqua","bold":true,"italic":false}',minecraft:custom_data={fitness_bow:1}] 1
give @s minecraft:arrow 64
bossbar set rfm:fitness_time name [{"text":"全民健身挑战  ·  检查点 ","color":"red"},{"score":{"name":"@s","objective":"fitness_checkpoint"},"color":"yellow"},{"text":" / 5","color":"red"}]
title @s actionbar {"text":"检查点3完成：命中前方三个标靶","color":"aqua","bold":true}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.3 1
