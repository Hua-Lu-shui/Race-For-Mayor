bossbar set rfm:energy_time visible false
clear @s minecraft:paper[minecraft:custom_data={energy_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{energy_ready:1}}}}]

#复位控制台
setblock 267 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 264 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 261 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 258 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 262 -58 74 minecraft:stone_button[face=floor,facing=north,powered=false] replace

scoreboard players set @s energy_round 0
scoreboard players set @s energy_target 0
scoreboard players set @s energy_total 0
scoreboard players set @s energy_correct 0
scoreboard players set @s energy_time 0
scoreboard players set @s energy_delay 0
scoreboard players set @s energy_state 0
function rfm:task/action/sequence/complete_current
