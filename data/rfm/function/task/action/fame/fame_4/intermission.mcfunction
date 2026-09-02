scoreboard players remove @s qa_delay 1
execute if score @s qa_delay matches ..0 if score @s qa_round matches 10.. run function rfm:task/action/fame/fame_4/result
execute if score @s qa_state matches 5 if score @s qa_delay matches ..0 if score @s qa_round matches ..9 run function rfm:task/action/fame/fame_4/prepare_round
