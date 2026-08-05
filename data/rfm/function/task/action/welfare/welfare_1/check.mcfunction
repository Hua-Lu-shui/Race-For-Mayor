#判断本次分诊结果并清空三个窗口
execute if score @s hospital_answer = @s hospital_target run scoreboard players add @s hospital_correct 1
execute if score @s hospital_answer = @s hospital_target run tellraw @s [{"text":"分诊正确！","color":"green","bold":true},{"text":" 当前正确数：","color":"white"},{"score":{"name":"@s","objective":"hospital_correct"},"color":"green"}]
execute if score @s hospital_answer = @s hospital_target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2 1
execute unless score @s hospital_answer = @s hospital_target run scoreboard players remove @s hospital_time 60
execute unless score @s hospital_answer = @s hospital_target run tellraw @s {"text":"分诊错误，扣除3秒！","color":"red","bold":true}
execute unless score @s hospital_answer = @s hospital_target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

data remove block 752 -60 103 Items
data remove block 760 -60 103 Items
data remove block 768 -60 103 Items

scoreboard players add @s hospital_round 1
bossbar set rfm:hospital_time name [{"text":"\uE220","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE220","font":"rfm:bossbar"},{"text":"医院排队疏导  ·  已分诊 ","color":"red"},{"score":{"name":"@s","objective":"hospital_round"},"color":"yellow"},{"text":" / 8  ·  正确 ","color":"red"},{"score":{"name":"@s","objective":"hospital_correct"},"color":"gold"}]
execute if score @s hospital_round matches ..7 run function rfm:task/action/welfare/welfare_1/give_case
execute if score @s hospital_round matches 8.. run function rfm:task/action/welfare/welfare_1/result
