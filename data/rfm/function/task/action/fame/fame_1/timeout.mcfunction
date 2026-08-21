#三秒内没有作出反应，本次直接扣除1分
function rfm:task/action/fame/fame_1/reset_buttons
scoreboard players remove @s speech_score 1
tellraw @a[tag=rfm_participant] {"text":"反应超时，现场支持度 -1。","color":"red","bold":true}
playsound minecraft:block.note_block.bass master @a[tag=rfm_participant] ~ ~ ~ 1 0.7 1

scoreboard players add @s speech_round 1
execute if score @s speech_round matches ..9 run scoreboard players set @s speech_state 5
execute if score @s speech_round matches ..9 run scoreboard players set @s speech_delay 15
execute if score @s speech_round matches 10.. run function rfm:task/action/fame/fame_1/result
