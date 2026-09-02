execute if score @s negotiation_category matches 0 if score @s negotiation_question matches 1 if entity @s[tag=rfm_negotiation_q1_used] run function rfm:task/action/economy/economy_2/advance_question
execute if score @s negotiation_category matches 0 if score @s negotiation_question matches 2 if entity @s[tag=rfm_negotiation_q2_used] run function rfm:task/action/economy/economy_2/advance_question
execute if score @s negotiation_category matches 0 if score @s negotiation_question matches 3 if entity @s[tag=rfm_negotiation_q3_used] run function rfm:task/action/economy/economy_2/advance_question
execute if score @s negotiation_category matches 0 if score @s negotiation_question matches 4 if entity @s[tag=rfm_negotiation_q4_used] run function rfm:task/action/economy/economy_2/advance_question
execute if score @s negotiation_category matches 0 if score @s negotiation_question matches 5 if entity @s[tag=rfm_negotiation_q5_used] run function rfm:task/action/economy/economy_2/advance_question
execute if score @s negotiation_category matches 0 if score @s negotiation_question matches 6 if entity @s[tag=rfm_negotiation_q6_used] run function rfm:task/action/economy/economy_2/advance_question
execute if score @s negotiation_category matches 0 if score @s negotiation_question matches 7 if entity @s[tag=rfm_negotiation_q7_used] run function rfm:task/action/economy/economy_2/advance_question
execute if score @s negotiation_category matches 0 if score @s negotiation_question matches 8 if entity @s[tag=rfm_negotiation_q8_used] run function rfm:task/action/economy/economy_2/advance_question
execute if score @s negotiation_category matches 0 if score @s negotiation_question matches 9 if entity @s[tag=rfm_negotiation_q9_used] run function rfm:task/action/economy/economy_2/advance_question
execute if score @s negotiation_category matches 0 run function rfm:task/action/economy/economy_2/accept_question
