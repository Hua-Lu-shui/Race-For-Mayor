#正式开始生态行动任务3并初始化计时状态
scoreboard players set @s park_progress 0
scoreboard players set @s park_time 600
scoreboard players set @s park_state 1
bossbar set rfm:park_time players @a
bossbar set rfm:park_time max 600
bossbar set rfm:park_time value 600
bossbar set rfm:park_time name [{"text":"公园维护  ·  已完成 ","color":"green"},{"score":{"name":"@s","objective":"park_progress"},"color":"yellow"},{"text":" / 6","color":"green"}]
bossbar set rfm:park_time visible true
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"text":"维护确认","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"在当前维护点附近按Q丢出","color":"gray","italic":false}'],minecraft:custom_data={park_check:1}] 1
