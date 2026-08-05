#完成平衡木段
scoreboard players set @s fitness_checkpoint 2
bossbar set rfm:fitness_time name [{"text":"\uE219","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE227","font":"rfm:bossbar"},{"text":"全民健身挑战  ·  检查点 ","color":"red"},{"score":{"name":"@s","objective":"fitness_checkpoint"},"color":"yellow"},{"text":" / 5","color":"red"}]
title @s actionbar {"text":"检查点2完成：攀上脚手架高台","color":"yellow","bold":true}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2 1
