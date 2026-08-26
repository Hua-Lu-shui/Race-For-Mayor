#关闭准备状态，清理时钟和统计
scoreboard players set #waiting next_round_ready 0
clear @a[tag=rfm_participant] minecraft:clock[minecraft:custom_data={next_round_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
#第2至4回合的办公室交易等待结束后，神秘人立即离场，任务选择期间不再留在办公室
execute if score #round round matches 2..4 run function rfm:collection/mysterious/leave_all
execute if score #round round matches 0 run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.ca157750a579","color":"green","bold":true}
execute if score #round round matches 1.. run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.c62f9f6b8301","color":"green","bold":true}
function rfm:round/round
