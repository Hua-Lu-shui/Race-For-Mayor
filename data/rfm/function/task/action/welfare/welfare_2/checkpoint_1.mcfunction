#完成跨栏段
scoreboard players set @s fitness_checkpoint 1
bossbar set rfm:fitness_time name [{"text":"全民健身挑战  ·  检查点 ","color":"red"},{"score":{"name":"@s","objective":"fitness_checkpoint"},"color":"yellow"},{"text":" / 5","color":"red"}]
title @s actionbar {"text":"检查点1完成：通过平衡木","color":"yellow","bold":true}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.1 1
