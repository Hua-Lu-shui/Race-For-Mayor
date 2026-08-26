#推进生态行动任务2的开场倒计时
execute if score @s sample_delay matches 60 run title @a[tag=rfm_participant] clear
execute if score @s sample_delay matches 60 run title @a[tag=rfm_participant] title {"text":"3","color":"green","bold":true}
execute if score @s sample_delay matches 60 run playsound minecraft:block.note_block.hat master @a[tag=rfm_participant] ~ ~ ~ 1 1 1
execute if score @s sample_delay matches 40 run title @a[tag=rfm_participant] title {"text":"2","color":"yellow","bold":true}
execute if score @s sample_delay matches 40 run playsound minecraft:block.note_block.hat master @a[tag=rfm_participant] ~ ~ ~ 1 1 1
execute if score @s sample_delay matches 20 run title @a[tag=rfm_participant] title {"text":"1","color":"red","bold":true}
execute if score @s sample_delay matches 20 run playsound minecraft:block.note_block.hat master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1

scoreboard players remove @s sample_delay 1
execute if score @s sample_delay matches ..0 run title @a[tag=rfm_participant] title {"translate":"rfm.text.79cc871ca992","color":"green","bold":true}
execute if score @s sample_delay matches ..0 run function rfm:task/action/ecology/ecology_2/begin
