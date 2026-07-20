#根据正确分诊数量结算民生奖励
scoreboard players set @s hospital_state 4
bossbar set rfm:hospital_time visible false
tellraw @a [{"text":"医院排队疏导结束，共正确分诊 ","color":"white"},{"score":{"name":"@s","objective":"hospital_correct"},"color":"red"},{"text":" / 8 名患者。","color":"white"}]

execute if score @s hospital_correct matches 8 run scoreboard players add @s welfare 8
execute if score @s hospital_correct matches 8 run tellraw @a [{"text":"【医院排队疏导】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完美完成任务！","color":"gold","bold":true},{"text":" 民生 +8","color":"red"}]

execute if score @s hospital_correct matches 6..7 run scoreboard players add @s welfare 6
execute if score @s hospital_correct matches 6..7 run tellraw @a [{"text":"【医院排队疏导】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 顺利完成任务！","color":"green","bold":true},{"text":" 民生 +6","color":"red"}]

execute if score @s hospital_correct matches 4..5 run scoreboard players add @s welfare 3
execute if score @s hospital_correct matches 4..5 run tellraw @a [{"text":"【医院排队疏导】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 基本完成任务。","color":"yellow","bold":true},{"text":" 民生 +3","color":"red"}]

execute if score @s hospital_correct matches ..3 run tellraw @a [{"text":"【医院排队疏导】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 未能有效疏导患者。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_1/cleanup
