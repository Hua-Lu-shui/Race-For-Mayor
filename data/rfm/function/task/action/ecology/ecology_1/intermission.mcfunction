function rfm:task/action/ecology/ecology_1/clear_drops
scoreboard players remove @s emission_delay 1
execute if score @s emission_delay matches ..0 if score @s emission_round matches 10.. run function rfm:task/action/ecology/ecology_1/result
execute if score @s emission_delay matches ..0 if score @s emission_round matches ..9 run function rfm:task/action/ecology/ecology_1/prepare_round
