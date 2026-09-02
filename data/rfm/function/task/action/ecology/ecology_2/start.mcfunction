scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 158 -48 74 90 30
tp @s 144 -57 69 0 0
function rfm:task/action/sequence/hide_observers

function rfm:task/action/ecology/ecology_2/create_labels

scoreboard players set @s sample_progress 0
scoreboard players set @s sample_time 0
scoreboard players set @s sample_delay 0
scoreboard players set @s sample_state 2

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.0ee5f563d16a","color":"green","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.995a081da711","color":"#67D5FF","bold":true},{"translate":"rfm.text.d42ed0e580af","color":"white"},{"translate":"rfm.text.468be7ecc7ce","color":"#FFCB77"},{"translate":"rfm.text.619358f04532","color":"white"},{"translate":"rfm.text.254babb918b6","color":"#FFD166","bold":true},{"text":"。","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.0de4f944e411","color":"green","bold":true}

item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"green","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={sample_ready:1}] 1
