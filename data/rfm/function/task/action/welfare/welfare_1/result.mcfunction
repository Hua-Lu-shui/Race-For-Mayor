#根据正确分诊数量结算民生奖励
scoreboard players set @s hospital_state 4
bossbar set rfm:hospital_time visible false
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.36dafbe0c2f8","color":"white"},{"score":{"name":"@s","objective":"hospital_correct"},"color":"red"},{"translate":"rfm.text.dff899097d54","color":"white"}]

execute if score @s hospital_correct matches 8 run scoreboard players add @s welfare 16
execute if score @s hospital_correct matches 8 run function rfm:ability/military/perfect
execute if score @s hospital_correct matches 8 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.c3d383f780f5","color":"red","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.379faccd6692","color":"red"}]

execute if score @s hospital_correct matches 6..7 run scoreboard players add @s welfare 10
execute if score @s hospital_correct matches 6..7 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.c3d383f780f5","color":"red","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.eb74d16a4797","color":"red"}]

execute if score @s hospital_correct matches ..5 run scoreboard players add @s welfare 4
execute if score @s hospital_correct matches ..5 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.c3d383f780f5","color":"red","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.be1f9be13b3a","color":"red"}]
function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_1/cleanup
