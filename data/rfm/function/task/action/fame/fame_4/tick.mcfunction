#每轮只有60 tick；玩家必须留在中央并在正确朝向潜行
function rfm:task/action/fame/fame_4/emit_cue
bossbar set rfm:qa_time name [{"text":"\uE225","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE21B","font":"rfm:bossbar"},{"text":"公开答疑 · 第 ","color":"aqua"},{"score":{"name":"@s","objective":"qa_round"},"color":"white"},{"text":" / 8 轮 · 成功 ","color":"aqua"},{"score":{"name":"@s","objective":"qa_correct"},"color":"green"},{"text":" 次 · 反应时间3秒","color":"yellow"}]
execute store result bossbar rfm:qa_time value run scoreboard players get @s qa_time

#每轮必须先松开潜行键；重新按下的瞬间锁定朝向并判断，不能蹲着转圈补救
execute if score @s qa_state matches 1 unless predicate rfm:task/action/fame/fame_4/is_sneaking run scoreboard players set @s qa_armed 1
execute if score @s qa_state matches 1 if score @s qa_armed matches 1 if predicate rfm:task/action/fame/fame_4/is_sneaking run function rfm:task/action/fame/fame_4/check_response

execute if score @s qa_state matches 1 run scoreboard players remove @s qa_time 1
execute if score @s qa_state matches 1 if score @s qa_time matches ..0 run function rfm:task/action/fame/fame_4/timeout
