#当前执行者为神秘人；玩家先看到末影粒子与传送音效，实体传送到场外后再被删除
particle minecraft:reverse_portal ~ ~1 ~ 0.45 0.8 0.45 0.08 45 force @a[distance=..24]
playsound minecraft:entity.enderman.teleport master @a[distance=..24] ~ ~ ~ 0.8 1.1 0
tp @s 0 300 0
kill @s
