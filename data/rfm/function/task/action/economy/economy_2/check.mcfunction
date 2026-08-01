#立即复位全部按钮，避免一次按键被连续读取
setblock 144 -57 24 minecraft:stone_button[face=floor,facing=west,powered=false] replace
setblock 144 -57 22 minecraft:stone_button[face=floor,facing=west,powered=false] replace
setblock 144 -57 20 minecraft:stone_button[face=floor,facing=west,powered=false] replace

execute if score @s negotiation_answer = @s negotiation_category run scoreboard players add @s negotiation_correct 1
execute if score @s negotiation_answer = @s negotiation_category run tellraw @a {"text":"选择正确，扶持方案符合企业需求！","color":"green","bold":true}
execute if score @s negotiation_answer = @s negotiation_category run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2 1
execute unless score @s negotiation_answer = @s negotiation_category run tellraw @a {"text":"选择错误，这项方案没有解决企业当前的问题。","color":"red","bold":true}
execute unless score @s negotiation_answer = @s negotiation_category run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 1 1

scoreboard players add @s negotiation_round 1
execute if score @s negotiation_round matches ..8 run function rfm:task/action/economy/economy_2/prepare_round
execute if score @s negotiation_round matches 9.. run function rfm:task/action/economy/economy_2/result
