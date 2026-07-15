scoreboard players set @s negotiation_answer 0
scoreboard players set @s negotiation_category 0
setblock 324 -60 108 minecraft:stone_button[face=floor,facing=north,powered=false] replace
setblock 328 -60 108 minecraft:stone_button[face=floor,facing=north,powered=false] replace
setblock 332 -60 108 minecraft:stone_button[face=floor,facing=north,powered=false] replace

#六种类别顺序，确保人才、交通、税收各出现一次
execute if score @s negotiation_order matches 1 if score @s negotiation_round matches 0 run scoreboard players set @s negotiation_category 1
execute if score @s negotiation_order matches 1 if score @s negotiation_round matches 1 run scoreboard players set @s negotiation_category 2
execute if score @s negotiation_order matches 1 if score @s negotiation_round matches 2 run scoreboard players set @s negotiation_category 3
execute if score @s negotiation_order matches 2 if score @s negotiation_round matches 0 run scoreboard players set @s negotiation_category 1
execute if score @s negotiation_order matches 2 if score @s negotiation_round matches 1 run scoreboard players set @s negotiation_category 3
execute if score @s negotiation_order matches 2 if score @s negotiation_round matches 2 run scoreboard players set @s negotiation_category 2
execute if score @s negotiation_order matches 3 if score @s negotiation_round matches 0 run scoreboard players set @s negotiation_category 2
execute if score @s negotiation_order matches 3 if score @s negotiation_round matches 1 run scoreboard players set @s negotiation_category 1
execute if score @s negotiation_order matches 3 if score @s negotiation_round matches 2 run scoreboard players set @s negotiation_category 3
execute if score @s negotiation_order matches 4 if score @s negotiation_round matches 0 run scoreboard players set @s negotiation_category 2
execute if score @s negotiation_order matches 4 if score @s negotiation_round matches 1 run scoreboard players set @s negotiation_category 3
execute if score @s negotiation_order matches 4 if score @s negotiation_round matches 2 run scoreboard players set @s negotiation_category 1
execute if score @s negotiation_order matches 5 if score @s negotiation_round matches 0 run scoreboard players set @s negotiation_category 3
execute if score @s negotiation_order matches 5 if score @s negotiation_round matches 1 run scoreboard players set @s negotiation_category 1
execute if score @s negotiation_order matches 5 if score @s negotiation_round matches 2 run scoreboard players set @s negotiation_category 2
execute if score @s negotiation_order matches 6 if score @s negotiation_round matches 0 run scoreboard players set @s negotiation_category 3
execute if score @s negotiation_order matches 6 if score @s negotiation_round matches 1 run scoreboard players set @s negotiation_category 2
execute if score @s negotiation_order matches 6 if score @s negotiation_round matches 2 run scoreboard players set @s negotiation_category 1

execute if score @s negotiation_category matches 1 store result score @s negotiation_question run random value 1..3
execute if score @s negotiation_category matches 2 store result score @s negotiation_question run random value 4..6
execute if score @s negotiation_category matches 3 store result score @s negotiation_question run random value 7..9

function rfm:task/action/economy/economy_2/show_question
