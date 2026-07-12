execute if score @s sample_delay matches 60 run title @a clear
execute if score @s sample_delay matches 60 run title @a title {"text":"3","color":"gold","bold":true}
execute if score @s sample_delay matches 60 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1
execute if score @s sample_delay matches 40 run title @a title {"text":"2","color":"gold","bold":true}
execute if score @s sample_delay matches 40 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1
execute if score @s sample_delay matches 20 run title @a title {"text":"1","color":"red","bold":true}
execute if score @s sample_delay matches 20 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1.2 1

scoreboard players remove @s sample_delay 1
execute if score @s sample_delay matches ..0 run title @a title {"text":"开始！","color":"green","bold":true}
execute if score @s sample_delay matches ..0 run function rfm:task/action/ecology/ecology_2/begin
