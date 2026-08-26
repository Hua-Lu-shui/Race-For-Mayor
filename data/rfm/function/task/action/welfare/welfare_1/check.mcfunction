#判断本次分诊结果并清空三个窗口
execute if score @s hospital_answer = @s hospital_target run scoreboard players add @s hospital_correct 1
execute if score @s hospital_answer = @s hospital_target run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.853b1a1e9033","color":"green","bold":true},{"translate":"rfm.text.e02b0573ab8b","color":"white"},{"score":{"name":"@s","objective":"hospital_correct"},"color":"green"}]
execute if score @s hospital_answer = @s hospital_target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2 1
execute unless score @s hospital_answer = @s hospital_target run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.2519d3ad1b38","color":"red","bold":true}
execute unless score @s hospital_answer = @s hospital_target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

data remove block 123 -58 -66 Items
data remove block 119 -58 -66 Items
data remove block 115 -58 -66 Items

scoreboard players add @s hospital_round 1
bossbar set rfm:hospital_time name [{"translate":"rfm.text.aef6911f2025","color":"red"},{"score":{"name":"@s","objective":"hospital_round"},"color":"yellow"},{"translate":"rfm.text.b9009aa4e74a","color":"red"},{"score":{"name":"@s","objective":"hospital_correct"},"color":"gold"}]
execute if score @s hospital_round matches ..7 run function rfm:task/action/welfare/welfare_1/give_case
execute if score @s hospital_round matches 8.. run function rfm:task/action/welfare/welfare_1/result
