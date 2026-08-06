#开始下一次排放判断
scoreboard players add @s emission_round 1
execute store result score @s emission_target run random value 1..9
#黑烟从本轮排放口冒出时播放一次短促喷气声，避免在每 tick 叠加音效
execute if score @s emission_target matches 1 run playsound minecraft:block.fire.extinguish master @a 123 -58 72 0.8 0.6
execute if score @s emission_target matches 2 run playsound minecraft:block.fire.extinguish master @a 120 -58 72 0.8 0.6
execute if score @s emission_target matches 3 run playsound minecraft:block.fire.extinguish master @a 117 -58 72 0.8 0.6
execute if score @s emission_target matches 4 run playsound minecraft:block.fire.extinguish master @a 123 -58 75 0.8 0.6
execute if score @s emission_target matches 5 run playsound minecraft:block.fire.extinguish master @a 120 -58 75 0.8 0.6
execute if score @s emission_target matches 6 run playsound minecraft:block.fire.extinguish master @a 117 -58 75 0.8 0.6
execute if score @s emission_target matches 7 run playsound minecraft:block.fire.extinguish master @a 123 -58 78 0.8 0.6
execute if score @s emission_target matches 8 run playsound minecraft:block.fire.extinguish master @a 120 -58 78 0.8 0.6
execute if score @s emission_target matches 9 run playsound minecraft:block.fire.extinguish master @a 117 -58 78 0.8 0.6
scoreboard players set @s emission_answer 0
scoreboard players set @s emission_time 40
scoreboard players set @s emission_delay 0
scoreboard players set @s emission_state 1

#显示2秒选择Bossbar
bossbar set rfm:emission_time players @a
bossbar set rfm:emission_time max 40
bossbar set rfm:emission_time value 40
bossbar set rfm:emission_time name [{"text":"第 ","color":"white"},{"score":{"name":"@s","objective":"emission_round"},"color":"gold"},{"text":" / 10 轮","color":"green"}]
bossbar set rfm:emission_time visible true

#补齐九张纸，确保同一编号可以在后续再次使用
function rfm:task/action/ecology/ecology_1/give_items
