#正式开始生态行动任务3并初始化计时状态
scoreboard players set @s park_progress 0
scoreboard players set @s park_time 800
scoreboard players set @s park_state 1
bossbar set rfm:park_time players @a[tag=rfm_participant]
bossbar set rfm:park_time max 800
bossbar set rfm:park_time value 800
bossbar set rfm:park_time name [{"translate":"rfm.text.ebb9f3effdda","color":"green"},{"score":{"name":"@s","objective":"park_progress"},"color":"yellow"},{"text":" / 6","color":"green"}]
bossbar set rfm:park_time visible true
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.aa8fb53f4022","color":"green","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.949db26ca5d3","color":"gray","italic":false}'],minecraft:custom_data={park_check:1}] 1
