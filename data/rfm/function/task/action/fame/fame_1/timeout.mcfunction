function rfm:task/action/fame/fame_1/reset_buttons
scoreboard players remove @s speech_score 1
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.616a0a499fd1","color":"red","bold":true}
playsound minecraft:block.note_block.bass master @a[tag=rfm_participant] ~ ~ ~ 1 0.7 1

scoreboard players add @s speech_round 1
execute if score @s speech_round matches ..9 run scoreboard players set @s speech_state 5
execute if score @s speech_round matches ..9 run scoreboard players set @s speech_delay 15
execute if score @s speech_round matches 10.. run function rfm:task/action/fame/fame_1/result
