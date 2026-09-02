scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 262 -59 70 0 0
tp @s 263 -59 76 0 0
function rfm:task/action/sequence/hide_observers

setblock 267 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 264 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 261 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 258 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 262 -58 74 minecraft:stone_button[face=floor,facing=north,powered=false] replace
function rfm:task/action/ecology/ecology_5/create_labels

scoreboard players set @s energy_round 0
scoreboard players set @s energy_target 0
scoreboard players set @s energy_total 0
scoreboard players set @s energy_correct 0
scoreboard players set @s energy_time 0
scoreboard players set @s energy_delay 0
scoreboard players set @s energy_state 2

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.940495d8e7c4","color":"green","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.995a081da711","color":"#67D5FF","bold":true},{"translate":"rfm.text.f57fa98c422b","color":"white"},{"translate":"rfm.text.c8ad668489f2","color":"#FFD166","bold":true},{"translate":"rfm.text.144896339332","color":"white"},{"translate":"rfm.text.3e67d798a45f","color":"#FFCB77"},{"text":"。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.09dd41999781","color":"#67D5FF","bold":true},{"translate":"rfm.text.7ae3ce3d7352","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.dea9f8ca0a01","color":"green","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"green","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={energy_ready:1}] 1
