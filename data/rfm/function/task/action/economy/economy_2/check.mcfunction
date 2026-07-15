#立即复位全部按钮，避免一次按键被连续读取
setblock 324 -60 108 minecraft:stone_button[face=floor,facing=north,powered=false] replace
setblock 328 -60 108 minecraft:stone_button[face=floor,facing=north,powered=false] replace
setblock 332 -60 108 minecraft:stone_button[face=floor,facing=north,powered=false] replace

execute if score @s negotiation_answer = @s negotiation_category run scoreboard players add @s negotiation_correct 1
execute if score @s negotiation_answer = @s negotiation_category run tellraw @a {"text":"选择正确，扶持方案符合企业需求！","color":"green","bold":true}
execute if score @s negotiation_answer = @s negotiation_category run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2 1
execute unless score @s negotiation_answer = @s negotiation_category run tellraw @a {"text":"选择错误，这项方案没有解决企业当前的问题。","color":"red","bold":true}
execute unless score @s negotiation_answer = @s negotiation_category run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 1 1

scoreboard players add @s negotiation_round 1
execute if score @s negotiation_round matches ..2 run function rfm:task/action/economy/economy_2/prepare_round
execute if score @s negotiation_round matches 3.. run function rfm:task/action/economy/economy_2/result
