scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 190 -47 71 -90 30
tp @s 206 -58 63 45 0
function rfm:task/action/sequence/hide_observers

function rfm:task/action/ecology/ecology_3/create_labels
scoreboard players set @s park_progress 0
scoreboard players set @s park_time 0
scoreboard players set @s park_delay 0
scoreboard players set @s park_state 2

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.884562712752","color":"green","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.995a081da711","color":"#67D5FF","bold":true},{"translate":"rfm.text.199d27a99c6d","color":"white"},{"translate":"rfm.text.1a206a0fa9b3","color":"#FFCB77"},{"translate":"rfm.text.01b620a9af49","color":"white"},{"translate":"rfm.text.cb39af4d2a8e","color":"#FFD166","bold":true},{"text":"。","color":"white"}]
title @s clear
title @s title {"translate":"rfm.text.14554e8f2cc8","color":"green","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"green","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={park_ready:1}] 1
