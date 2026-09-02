scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 121 -48 74 180 0
tp @s 120 -55 68 0 0
function rfm:task/action/sequence/hide_observers

function rfm:task/action/ecology/ecology_1/create_labels

scoreboard players set @s emission_round 0
scoreboard players set @s emission_correct 0
scoreboard players set @s emission_target 0
scoreboard players set @s emission_answer 0
scoreboard players set @s emission_time 0
scoreboard players set @s emission_delay 0
scoreboard players set @s emission_state 5

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.28858f9b1c3c","color":"green","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.f44a75c3f0a9","color":"white"},{"translate":"rfm.text.995a081da711","color":"#67D5FF","bold":true},{"translate":"rfm.text.a10c069b6b76","color":"white"},{"translate":"rfm.text.bea54c87eabe","color":"#FFCB77","bold":true},{"translate":"rfm.text.c0499e077385","color":"white"},{"translate":"rfm.text.15c91d6be19e","color":"#FFD166","bold":true},{"translate":"rfm.text.f42dbe2701df","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.003f8a08b2cf","color":"green","bold":true}

item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"green","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={emission_ready:1}] 1
