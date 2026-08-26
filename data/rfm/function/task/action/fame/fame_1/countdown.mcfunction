#推进名誉行动任务1的开场倒计时
execute if score @s speech_delay matches 60 run title @a[tag=rfm_participant] clear
execute if score @s speech_delay matches 60 run title @a[tag=rfm_participant] title {"text":"3","color":"green","bold":true}
execute if score @s speech_delay matches 60 run playsound minecraft:block.note_block.hat master @a[tag=rfm_participant] ~ ~ ~ 1 1 1
execute if score @s speech_delay matches 40 run title @a[tag=rfm_participant] title {"text":"2","color":"yellow","bold":true}
execute if score @s speech_delay matches 40 run playsound minecraft:block.note_block.hat master @a[tag=rfm_participant] ~ ~ ~ 1 1 1
execute if score @s speech_delay matches 20 run title @a[tag=rfm_participant] title {"text":"1","color":"red","bold":true}
execute if score @s speech_delay matches 20 run playsound minecraft:block.note_block.hat master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
scoreboard players remove @s speech_delay 1
execute if score @s speech_delay matches ..0 run title @a[tag=rfm_participant] title {"translate":"rfm.text.79cc871ca992","color":"aqua","bold":true}
execute if score @s speech_delay matches ..0 run function rfm:task/action/fame/fame_1/begin
