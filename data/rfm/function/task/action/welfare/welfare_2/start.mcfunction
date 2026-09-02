scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

scoreboard players set @s fitness_course 1
scoreboard players set @s fitness_checkpoint 0
scoreboard players set @s fitness_time 0
scoreboard players set @s fitness_state 2
scoreboard players set @s fitness_delay 0

gamemode adventure @a[tag=rfm_participant]

tp @a[tag=rfm_participant] 168 -49 -66 180 30
tp @s 184 -57 -67 90 0
function rfm:task/action/sequence/hide_observers

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.ed3b4489edb2","color":"red","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.706a832f9125","color":"white"},{"translate":"rfm.text.91edb5083d08","color":"#67D5FF","bold":true},{"translate":"rfm.text.6c3a307285a3","color":"white"},{"translate":"rfm.text.d8aa39eacfbd","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.af029b01d298","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"red","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={fitness_ready:1}] 1
