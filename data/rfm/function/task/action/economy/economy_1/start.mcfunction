scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

scoreboard players set @s market_round 0
scoreboard players set @s market_goods 0
scoreboard players set @s market_target 0
scoreboard players set @s market_answer 0
scoreboard players set @s market_correct 0
scoreboard players set @s market_time 0
scoreboard players set @s market_delay 0
scoreboard players set @s market_state 2
function rfm:task/action/economy/economy_1/prepare_round

gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 127 -50 22 90 30
tp @s 114 -59 22 -90 0
function rfm:task/action/sequence/hide_observers

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.af0bb2e3b3f7","color":"yellow","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.995a081da711","color":"#67D5FF","bold":true},{"translate":"rfm.text.0ad40dc1f059","color":"white"},{"translate":"rfm.text.7407e6a3df21","color":"#FFCB77"},{"translate":"rfm.text.eb1decca075c","color":"white"},{"translate":"rfm.text.19fb219fbdb2","color":"#FFD166","bold":true},{"translate":"rfm.text.a3d9e4117181","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.68b20f6eed5b","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={market_ready:1}] 1
