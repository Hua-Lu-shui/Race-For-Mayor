scoreboard players set @s cooking_clicks 0
scoreboard players set @s cooking_time 600
scoreboard players set @s cooking_state 1

bossbar set rfm:cooking_time players @a[tag=rfm_participant]
bossbar set rfm:cooking_time max 600
bossbar set rfm:cooking_time value 600
bossbar set rfm:cooking_time name [{"translate":"rfm.text.73640661bedc","color":"red"},{"score":{"name":"@s","objective":"cooking_clicks"},"color":"yellow"},{"translate":"rfm.text.218cb3331648","color":"red"}]
bossbar set rfm:cooking_time visible true
