#推进开场倒计时，结束前持续锁定行动玩家
execute if score @s bus_delay matches 60 run title @a clear
execute if score @s bus_delay matches 60 run title @a title {"text":"3","color":"green","bold":true}
execute if score @s bus_delay matches 60 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1
execute if score @s bus_delay matches 40 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score @s bus_delay matches 40 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1 1
execute if score @s bus_delay matches 20 run title @a title {"text":"1","color":"red","bold":true}
execute if score @s bus_delay matches 20 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1.2 1
scoreboard players remove @s bus_delay 1
execute if score @s bus_delay matches ..0 run function rfm:task/action/welfare/welfare_4/begin
