#推进社区拜访开场倒计时
execute if score @s visit_delay matches 60 run title @a clear
execute if score @s visit_delay matches 60 run title @a title {"text":"3","color":"green","bold":true}
execute if score @s visit_delay matches 60 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1
execute if score @s visit_delay matches 40 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score @s visit_delay matches 40 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1
execute if score @s visit_delay matches 20 run title @a title {"text":"1","color":"red","bold":true}
execute if score @s visit_delay matches 20 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1.2 1
scoreboard players remove @s visit_delay 1
execute if score @s visit_delay matches ..0 run title @a title {"text":"开始！","color":"aqua","bold":true}
execute if score @s visit_delay matches ..0 run function rfm:task/action/fame/fame_2/begin
