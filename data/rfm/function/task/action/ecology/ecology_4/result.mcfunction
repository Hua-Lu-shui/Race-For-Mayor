#根据完成情况结算生态行动任务4的奖励
scoreboard players set @s trash_state 4
bossbar set rfm:trash_time visible false
tellraw @a[tag=rfm_participant] [{"text":"垃圾分类督导结束，共正确分类 ","color":"white"},{"score":{"name":"@s","objective":"trash_correct"},"color":"green"},{"text":" / 10 件物品。","color":"white"}]

execute if score @s trash_correct matches 10 run scoreboard players add @s ecology 16
execute if score @s trash_correct matches 10 run function rfm:ability/military/perfect
execute if score @s trash_correct matches 10 run tellraw @a[tag=rfm_participant] [{"text":"【垃圾分类督导】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 生态 +16","color":"green"}]

execute if score @s trash_correct matches 7..9 run scoreboard players add @s ecology 10
execute if score @s trash_correct matches 7..9 run tellraw @a[tag=rfm_participant] [{"text":"【垃圾分类督导】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 生态 +10","color":"green"}]

execute if score @s trash_correct matches ..6 run scoreboard players add @s ecology 4
execute if score @s trash_correct matches ..6 run tellraw @a[tag=rfm_participant] [{"text":"【垃圾分类督导】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 生态 +4","color":"green"}]
function rfm:attribute/minimum
function rfm:task/action/ecology/ecology_4/cleanup
