#立即复位确认按钮，避免一次按键被连续读取
setblock 262 -58 74 minecraft:stone_button[face=floor,facing=north,powered=false] replace

execute if score @s energy_total = @s energy_target run scoreboard players add @s energy_correct 1
execute if score @s energy_total = @s energy_target run tellraw @a [{"text":"供电配平正确！","color":"green","bold":true},{"text":" 当前正确数：","color":"white"},{"score":{"name":"@s","objective":"energy_correct"},"color":"green"}]
execute if score @s energy_total = @s energy_target run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2 1
execute unless score @s energy_total = @s energy_target run tellraw @a {"text":"供电配平错误！","color":"red","bold":true}
execute unless score @s energy_total = @s energy_target run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 1 1

scoreboard players add @s energy_round 1
execute if score @s energy_round matches ..9 run function rfm:task/action/ecology/ecology_5/prepare_round
execute if score @s energy_round matches 10.. run function rfm:task/action/ecology/ecology_5/result
