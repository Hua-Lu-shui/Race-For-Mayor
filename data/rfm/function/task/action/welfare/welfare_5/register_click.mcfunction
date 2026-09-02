scoreboard players add @s cooking_clicks 1
particle minecraft:crit 263.5 -56.95 -64 0.25 0.2 0.25 0.04 5 force
playsound minecraft:block.note_block.hat master @a[tag=rfm_participant] 263.5 -56.95 -64 0.25 1.6 1
bossbar set rfm:cooking_time name [{"translate":"rfm.text.73640661bedc","color":"red"},{"score":{"name":"@s","objective":"cooking_clicks"},"color":"yellow"},{"translate":"rfm.text.218cb3331648","color":"red"}]
execute if score @s cooking_clicks matches 250.. run function rfm:task/action/welfare/welfare_5/result
