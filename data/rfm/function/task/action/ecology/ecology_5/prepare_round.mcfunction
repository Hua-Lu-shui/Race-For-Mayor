setblock 267 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 264 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 261 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 258 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 262 -58 74 minecraft:stone_button[face=floor,facing=north,powered=false] replace
scoreboard players set @s energy_total 0
execute store result score @s energy_target run random value 1..10

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.6666f97c70c8","color":"white"},{"score":{"name":"@s","objective":"energy_round"},"color":"yellow"},{"translate":"rfm.text.85bbceb61f17","color":"white"},{"score":{"name":"@s","objective":"energy_target"},"color":"green","bold":true}]
bossbar set rfm:energy_time name [{"translate":"rfm.text.fd2a9b7da215","color":"green"},{"score":{"name":"@s","objective":"energy_target"},"color":"yellow"},{"translate":"rfm.text.dc929b8356d8","color":"green"},{"score":{"name":"@s","objective":"energy_total"},"color":"aqua"},{"translate":"rfm.text.006b58daa3af","color":"green"},{"score":{"name":"@s","objective":"energy_correct"},"color":"gold"}]
