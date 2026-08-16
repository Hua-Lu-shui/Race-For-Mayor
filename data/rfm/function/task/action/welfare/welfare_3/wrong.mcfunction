#踩错后扣除2秒，并从本轮第一个动作重新输入
scoreboard players add @s exercise_wrong 1
scoreboard players remove @s exercise_time 40
scoreboard players set @s exercise_input 0
scoreboard players set @s exercise_answer 0
scoreboard players set @s exercise_target 0
tellraw @a {"text":"动作错误，扣除2秒！请从本轮第一个动作重新输入。","color":"red","bold":true}
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
bossbar set rfm:exercise_time name [{"text":"课间操领队  ·  第 ","color":"red"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"text":" / 3 轮  ·  已输入 0 / ","color":"red"},{"score":{"name":"@s","objective":"exercise_length"},"color":"white"}]
