#累计一刀并刷新反馈
scoreboard players add @s cooking_clicks 1
particle minecraft:crit 263.5 -56.95 -64 0.25 0.2 0.25 0.04 5 force
playsound minecraft:block.note_block.hat master @a 263.5 -56.95 -64 0.25 1.6 1
title @a[scores={action_task=805,cooking_state=1}] actionbar [{"text":"已切：","color":"yellow"},{"score":{"name":"@s","objective":"cooking_clicks"},"color":"white"},{"text":" / 250 刀","color":"gray"}]
bossbar set rfm:cooking_time name [{"text":"厨艺大比拼  ·  已切 ","color":"red"},{"score":{"name":"@s","objective":"cooking_clicks"},"color":"yellow"},{"text":" / 250 刀","color":"red"}]
execute if score @s cooking_clicks matches 250.. run function rfm:task/action/welfare/welfare_5/result
