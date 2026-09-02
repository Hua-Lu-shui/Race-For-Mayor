execute if score @s negotiation_question matches 1 run tag @s add rfm_negotiation_q1_used
execute if score @s negotiation_question matches 2 run tag @s add rfm_negotiation_q2_used
execute if score @s negotiation_question matches 3 run tag @s add rfm_negotiation_q3_used
execute if score @s negotiation_question matches 4 run tag @s add rfm_negotiation_q4_used
execute if score @s negotiation_question matches 5 run tag @s add rfm_negotiation_q5_used
execute if score @s negotiation_question matches 6 run tag @s add rfm_negotiation_q6_used
execute if score @s negotiation_question matches 7 run tag @s add rfm_negotiation_q7_used
execute if score @s negotiation_question matches 8 run tag @s add rfm_negotiation_q8_used
execute if score @s negotiation_question matches 9 run tag @s add rfm_negotiation_q9_used

execute if score @s negotiation_question matches 1..3 run scoreboard players set @s negotiation_category 1
execute if score @s negotiation_question matches 4..6 run scoreboard players set @s negotiation_category 2
execute if score @s negotiation_question matches 7..9 run scoreboard players set @s negotiation_category 3
function rfm:task/action/economy/economy_2/show_question
