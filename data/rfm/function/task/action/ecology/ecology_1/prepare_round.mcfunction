#开始下一次排放判断
scoreboard players add @s emission_round 1
execute store result score @s emission_target run random value 1..9
scoreboard players set @s emission_answer 0
scoreboard players set @s emission_time 50
scoreboard players set @s emission_delay 0
scoreboard players set @s emission_state 1

#显示2.5秒选择Bossbar
bossbar set rfm:emission_time players @a
bossbar set rfm:emission_time max 50
bossbar set rfm:emission_time value 50
bossbar set rfm:emission_time name [{"text":"第 ","color":"white"},{"score":{"name":"@s","objective":"emission_round"},"color":"gold"},{"text":" / 10 轮  ·  剩余时间：2.5 秒","color":"green"}]
bossbar set rfm:emission_time visible true

#补齐九张纸，确保同一编号可以在后续再次使用
function rfm:task/action/ecology/ecology_1/give_items
