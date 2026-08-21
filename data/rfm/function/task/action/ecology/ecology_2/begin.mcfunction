#40秒任务总时间
scoreboard players set @s sample_time 800
scoreboard players set @s sample_progress 0
scoreboard players set @s sample_state 1
bossbar set rfm:sample_time players @a[tag=rfm_participant]
bossbar set rfm:sample_time max 800
bossbar set rfm:sample_time value 800
bossbar set rfm:sample_time name [{"text":"河道取样  ·  已完成 ","color":"aqua"},{"score":{"name":"@s","objective":"sample_progress"},"color":"gold"},{"text":" / 6","color":"aqua"}]
bossbar set rfm:sample_time visible true

#发放第一个空玻璃瓶
give @s minecraft:glass_bottle 1
