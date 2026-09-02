scoreboard players set @s sample_time 800
scoreboard players set @s sample_progress 0
scoreboard players set @s sample_state 1
bossbar set rfm:sample_time players @a[tag=rfm_participant]
bossbar set rfm:sample_time max 800
bossbar set rfm:sample_time value 800
bossbar set rfm:sample_time name [{"translate":"rfm.text.98e59f85a64d","color":"aqua"},{"score":{"name":"@s","objective":"sample_progress"},"color":"gold"},{"text":" / 6","color":"aqua"}]
bossbar set rfm:sample_time visible true

give @s minecraft:glass_bottle 1
