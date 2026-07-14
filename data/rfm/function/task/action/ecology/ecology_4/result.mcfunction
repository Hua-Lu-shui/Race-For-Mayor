scoreboard players set @s trash_state 4
bossbar set rfm:trash_time visible false
tellraw @a [{"text":"垃圾分类督导结束，共正确分类 ","color":"white"},{"score":{"name":"@s","objective":"trash_correct"},"color":"green"},{"text":" / 10 件物品。","color":"white"}]

execute if score @s trash_correct matches 10 run scoreboard players add @s ecology 8
execute if score @s trash_correct matches 10 run tellraw @a [{"text":"【垃圾分类督导】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 完美完成任务！","color":"gold","bold":true},{"text":" 生态 +8","color":"green"}]

execute if score @s trash_correct matches 7..9 run scoreboard players add @s ecology 6
execute if score @s trash_correct matches 7..9 run tellraw @a [{"text":"【垃圾分类督导】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 通过任务！","color":"green","bold":true},{"text":" 生态 +6","color":"green"}]

execute if score @s trash_correct matches ..6 run tellraw @a [{"text":"【垃圾分类督导】","color":"green","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/ecology/ecology_4/cleanup
