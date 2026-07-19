#每轮之间短暂停顿半秒，再继续下一名记者
scoreboard players remove @s qa_delay 1
execute if score @s qa_delay matches ..0 if score @s qa_round matches 8.. run function rfm:task/action/fame/fame_4/result
execute if score @s qa_state matches 5 if score @s qa_delay matches ..0 if score @s qa_round matches ..7 run function rfm:task/action/fame/fame_4/prepare_round
