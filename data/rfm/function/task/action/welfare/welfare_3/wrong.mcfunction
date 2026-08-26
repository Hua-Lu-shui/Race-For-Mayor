#踩错后扣除2秒，并从本轮第一个动作重新输入
scoreboard players add @s exercise_wrong 1
scoreboard players remove @s exercise_time 40
scoreboard players set @s exercise_input 0
scoreboard players set @s exercise_answer 0
scoreboard players set @s exercise_target 0
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.a087589b3eb2","color":"red","bold":true}
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
bossbar set rfm:exercise_time name [{"translate":"rfm.text.22999089974d","color":"red"},{"score":{"name":"@s","objective":"exercise_round"},"color":"yellow"},{"translate":"rfm.text.5238427eec49","color":"red"},{"score":{"name":"@s","objective":"exercise_length"},"color":"white"}]
