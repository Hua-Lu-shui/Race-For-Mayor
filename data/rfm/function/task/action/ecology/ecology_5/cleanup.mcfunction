bossbar set rfm:energy_time visible false
clear @s minecraft:map[minecraft:custom_data={energy_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{energy_ready:1}}}}]
kill @e[type=minecraft:text_display,tag=rfm_energy_label]

#复位控制台
setblock 268 -60 102 minecraft:lever[face=floor,facing=north,powered=false] replace
setblock 271 -60 102 minecraft:lever[face=floor,facing=north,powered=false] replace
setblock 274 -60 102 minecraft:lever[face=floor,facing=north,powered=false] replace
setblock 277 -60 102 minecraft:lever[face=floor,facing=north,powered=false] replace
setblock 272 -60 107 minecraft:stone_button[face=floor,facing=north,powered=false] replace

scoreboard players set @s energy_round 0
scoreboard players set @s energy_target 0
scoreboard players set @s energy_total 0
scoreboard players set @s energy_correct 0
scoreboard players set @s energy_time 0
scoreboard players set @s energy_delay 0
scoreboard players set @s energy_state 0
function rfm:task/action/sequence/complete_current
