scoreboard players set @s negotiation_answer 0
scoreboard players set @s negotiation_category 0
setblock 144 -57 24 minecraft:stone_button[face=floor,facing=west,powered=false] replace
setblock 144 -57 22 minecraft:stone_button[face=floor,facing=west,powered=false] replace
setblock 144 -57 20 minecraft:stone_button[face=floor,facing=west,powered=false] replace

execute store result score @s negotiation_question run random value 1..9
function rfm:task/action/economy/economy_2/pick_question
