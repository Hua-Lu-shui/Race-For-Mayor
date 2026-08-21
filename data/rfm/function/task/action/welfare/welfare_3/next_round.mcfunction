#完成当前轮次；前两轮生成下一组动作，第三轮直接结算
tellraw @a[tag=rfm_participant] [{"text":"【课间操领队】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完成第 ","color":"green"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"text":" 轮动作！","color":"green"}]
playsound minecraft:entity.player.levelup master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
scoreboard players add @s exercise_round 1
execute if score @s exercise_round matches 2..3 run function rfm:task/action/welfare/welfare_3/prepare_round
execute if score @s exercise_round matches 4.. run function rfm:task/action/welfare/welfare_3/result
