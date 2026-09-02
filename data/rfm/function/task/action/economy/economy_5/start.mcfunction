scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

scoreboard players set @s employment_layout 0
scoreboard players set @s employment_completed 0
scoreboard players set @s employment_done_1 0
scoreboard players set @s employment_done_2 0
scoreboard players set @s employment_done_3 0
scoreboard players set @s employment_done_4 0
scoreboard players set @s employment_done_5 0
scoreboard players set @s employment_time 0
scoreboard players set @s employment_delay 0
scoreboard players set @s employment_state 2
execute store result score @s employment_layout run random value 1..3

gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 235 -58 12 0 0
tp @s 235 -58 25 90 0
function rfm:task/action/sequence/hide_observers

function rfm:task/action/economy/economy_5/create_scene

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.e16c3dfa7f91","color":"yellow","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.d7c36fa18e39","color":"white"},{"translate":"rfm.text.b1af95dbbc6e","color":"#67D5FF","bold":true},{"translate":"rfm.text.0a2772bc5bbc","color":"white"},{"translate":"rfm.text.159b657df224","color":"#FFD166","bold":true},{"text":"。","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.c96143a9c522","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={employment_ready:1}] 1
