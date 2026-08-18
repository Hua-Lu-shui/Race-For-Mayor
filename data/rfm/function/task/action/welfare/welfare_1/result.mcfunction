#根据正确分诊数量结算民生奖励
scoreboard players set @s hospital_state 4
bossbar set rfm:hospital_time visible false
tellraw @a [{"text":"医院排队疏导结束，共正确分诊 ","color":"white"},{"score":{"name":"@s","objective":"hospital_correct"},"color":"red"},{"text":" / 8 名患者。","color":"white"}]

execute if score @s hospital_correct matches 8 run scoreboard players add @s welfare 16
execute if score @s hospital_correct matches 8 run function rfm:ability/military/perfect
execute if score @s hospital_correct matches 8 run tellraw @a [{"text":"【医院排队疏导】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 民生 +16","color":"red"}]

execute if score @s hospital_correct matches 6..7 run scoreboard players add @s welfare 10
execute if score @s hospital_correct matches 6..7 run tellraw @a [{"text":"【医院排队疏导】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 民生 +10","color":"red"}]

execute if score @s hospital_correct matches ..5 run scoreboard players add @s welfare 4
execute if score @s hospital_correct matches ..5 run tellraw @a [{"text":"【医院排队疏导】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 民生 +4","color":"red"}]
function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_1/cleanup
