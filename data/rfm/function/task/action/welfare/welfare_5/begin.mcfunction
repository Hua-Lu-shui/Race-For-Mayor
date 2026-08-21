#正式开始厨艺大比拼
scoreboard players set @s cooking_clicks 0
scoreboard players set @s cooking_time 600
scoreboard players set @s cooking_state 1

bossbar set rfm:cooking_time players @a[tag=rfm_participant]
bossbar set rfm:cooking_time max 600
bossbar set rfm:cooking_time value 600
bossbar set rfm:cooking_time name [{"text":"厨艺大比拼  ·  已切 ","color":"red"},{"score":{"name":"@s","objective":"cooking_clicks"},"color":"yellow"},{"text":" / 250 刀","color":"red"}]
bossbar set rfm:cooking_time visible true
