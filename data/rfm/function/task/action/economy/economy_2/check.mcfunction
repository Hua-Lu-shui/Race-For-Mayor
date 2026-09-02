setblock 144 -57 24 minecraft:stone_button[face=floor,facing=west,powered=false] replace
setblock 144 -57 22 minecraft:stone_button[face=floor,facing=west,powered=false] replace
setblock 144 -57 20 minecraft:stone_button[face=floor,facing=west,powered=false] replace

execute if score @s negotiation_answer = @s negotiation_category run scoreboard players add @s negotiation_correct 1
execute if score @s negotiation_answer = @s negotiation_category run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.5dcba5ee6269","color":"green","bold":true}
execute if score @s negotiation_answer = @s negotiation_category run playsound minecraft:entity.experience_orb.pickup master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
execute unless score @s negotiation_answer = @s negotiation_category run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.5195a7b0e46f","color":"red","bold":true}
execute unless score @s negotiation_answer = @s negotiation_category run playsound minecraft:entity.villager.no master @a[tag=rfm_participant] ~ ~ ~ 1 1 1

scoreboard players add @s negotiation_round 1
execute if score @s negotiation_round matches ..8 run function rfm:task/action/economy/economy_2/prepare_round
execute if score @s negotiation_round matches 9.. run function rfm:task/action/economy/economy_2/result
