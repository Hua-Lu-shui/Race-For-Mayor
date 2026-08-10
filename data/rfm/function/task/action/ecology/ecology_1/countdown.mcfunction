#教程结束后的3秒准备倒计时；状态4期间不会检测玩家答案
execute if score @s emission_delay matches 60 run title @a clear
execute if score @s emission_delay matches 60 run title @a title {"text":"3","color":"green","bold":true}
execute if score @s emission_delay matches 60 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score @s emission_delay matches 40 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score @s emission_delay matches 40 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score @s emission_delay matches 20 run title @a title {"text":"1","color":"red","bold":true}
execute if score @s emission_delay matches 20 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1.2 1

scoreboard players remove @s emission_delay 1

execute if score @s emission_delay matches ..0 run title @a title {"text":"开始","color":"green","bold":true}
execute if score @s emission_delay matches ..0 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1 1
execute if score @s emission_delay matches ..0 run function rfm:task/action/ecology/ecology_1/prepare_round
