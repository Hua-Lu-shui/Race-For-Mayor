scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
function rfm:task/action/welfare/welfare_1/create_scene
function rfm:task/action/welfare/welfare_1/create_labels

scoreboard players set @s hospital_round 0
scoreboard players set @s hospital_case 0
scoreboard players set @s hospital_target 0
scoreboard players set @s hospital_answer 0
scoreboard players set @s hospital_correct 0
scoreboard players set @s hospital_time 0
scoreboard players set @s hospital_delay 0
scoreboard players set @s hospital_state 2

gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 119 -58 -77 0 0
tp @s 119 -58 -71 0 0
function rfm:task/action/sequence/hide_observers

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.9404870b4a25","color":"red","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.aac0ef6c1c6d","color":"white"},{"translate":"rfm.text.eecfc083177a","color":"#67D5FF","bold":true},{"translate":"rfm.text.ca80130b5383","color":"white"},{"translate":"rfm.text.208a13e07332","color":"#FFD166","bold":true},{"translate":"rfm.text.06366f532f79","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.5de269e96a6e","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"red","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.70325968cefe","color":"gray","italic":false}'],minecraft:custom_data={hospital_ready:1}] 1
