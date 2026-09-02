function rfm:task/action/fame/fame_4/emit_cue
bossbar set rfm:qa_time name [{"translate":"rfm.text.852d19094ec2","color":"aqua"},{"score":{"name":"@s","objective":"qa_round"},"color":"white"},{"translate":"rfm.text.22c60a000443","color":"aqua"},{"score":{"name":"@s","objective":"qa_correct"},"color":"green"},{"translate":"rfm.text.1b9f1b756dec","color":"yellow"}]
execute store result bossbar rfm:qa_time value run scoreboard players get @s qa_time

execute if score @s qa_state matches 1 unless predicate rfm:task/action/fame/fame_4/is_sneaking run scoreboard players set @s qa_armed 1
execute if score @s qa_state matches 1 if score @s qa_armed matches 1 if predicate rfm:task/action/fame/fame_4/is_sneaking run function rfm:task/action/fame/fame_4/check_response

execute if score @s qa_state matches 1 run scoreboard players remove @s qa_time 1
execute if score @s qa_state matches 1 if score @s qa_time matches ..0 run function rfm:task/action/fame/fame_4/timeout
