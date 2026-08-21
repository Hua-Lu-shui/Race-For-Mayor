#重置控制台并生成本轮1至10点的供电目标
setblock 267 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 264 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 261 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 258 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 262 -58 74 minecraft:stone_button[face=floor,facing=north,powered=false] replace
scoreboard players set @s energy_total 0
execute store result score @s energy_target run random value 1..10

tellraw @a[tag=rfm_participant] [{"text":"已完成 ","color":"white"},{"score":{"name":"@s","objective":"energy_round"},"color":"yellow"},{"text":" / 10 轮，本轮目标供电量：","color":"white"},{"score":{"name":"@s","objective":"energy_target"},"color":"green","bold":true}]
bossbar set rfm:energy_time name [{"text":"清洁能源检查  ·  目标 ","color":"green"},{"score":{"name":"@s","objective":"energy_target"},"color":"yellow"},{"text":"  ·  当前 ","color":"green"},{"score":{"name":"@s","objective":"energy_total"},"color":"aqua"},{"text":"  ·  正确 ","color":"green"},{"score":{"name":"@s","objective":"energy_correct"},"color":"gold"}]
