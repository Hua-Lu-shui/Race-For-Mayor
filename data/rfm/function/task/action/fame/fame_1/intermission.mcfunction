#短暂停顿后生成下一名市民的反应
scoreboard players remove @s speech_delay 1
execute if score @s speech_delay matches ..0 run function rfm:task/action/fame/fame_1/prepare_round
