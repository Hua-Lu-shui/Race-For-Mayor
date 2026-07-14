#先判断本次分类是否正确，再清空四个任务箱
execute if score @s trash_answer = @s trash_target run scoreboard players add @s trash_correct 1
execute if score @s trash_answer = @s trash_target run tellraw @s [{"text":"分类正确！","color":"green","bold":true},{"text":" 当前正确数：","color":"white"},{"score":{"name":"@s","objective":"trash_correct"},"color":"green"}]
execute if score @s trash_answer = @s trash_target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2 1
execute unless score @s trash_answer = @s trash_target run tellraw @s {"text":"分类错误！","color":"red","bold":true}
execute unless score @s trash_answer = @s trash_target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

data remove block 244 -60 100 Items
data remove block 252 -60 100 Items
data remove block 244 -60 108 Items
data remove block 252 -60 108 Items

scoreboard players add @s trash_round 1
bossbar set rfm:trash_time name [{"text":"垃圾分类督导  ·  已分类 ","color":"green"},{"score":{"name":"@s","objective":"trash_round"},"color":"yellow"},{"text":" / 10  ·  正确 ","color":"green"},{"score":{"name":"@s","objective":"trash_correct"},"color":"gold"}]
execute if score @s trash_round matches ..9 run function rfm:task/action/ecology/ecology_4/give_item
execute if score @s trash_round matches 10.. run function rfm:task/action/ecology/ecology_4/result
