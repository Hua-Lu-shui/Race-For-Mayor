#正式开始民生行动任务1并初始化计时与非重复病例
scoreboard players set @s hospital_round 0
scoreboard players set @s hospital_correct 0
scoreboard players set @s hospital_answer 0
scoreboard players set @s hospital_used_1 0
scoreboard players set @s hospital_used_2 0
scoreboard players set @s hospital_used_3 0
scoreboard players set @s hospital_used_4 0
scoreboard players set @s hospital_used_5 0
scoreboard players set @s hospital_used_6 0
scoreboard players set @s hospital_used_7 0
scoreboard players set @s hospital_used_8 0
scoreboard players set @s hospital_used_9 0
scoreboard players set @s hospital_used_10 0
scoreboard players set @s hospital_used_11 0
scoreboard players set @s hospital_used_12 0
scoreboard players set @s hospital_time 1200
scoreboard players set @s hospital_state 1

bossbar set rfm:hospital_time players @a
bossbar set rfm:hospital_time max 1200
bossbar set rfm:hospital_time value 1200
bossbar set rfm:hospital_time name [{"text":"\uE220","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE220","font":"rfm:bossbar"},{"text":"医院排队疏导  ·  已分诊 ","color":"red"},{"score":{"name":"@s","objective":"hospital_round"},"color":"yellow"},{"text":" / 8  ·  正确 ","color":"red"},{"score":{"name":"@s","objective":"hospital_correct"},"color":"gold"}]
bossbar set rfm:hospital_time visible true

function rfm:task/action/welfare/welfare_1/give_case
