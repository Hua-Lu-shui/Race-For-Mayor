#开始下一次议题响应
scoreboard players add #group_prompt group_prompt 1
scoreboard players set #group_state group_state 1
scoreboard players set #group_time group_time 100
scoreboard players set #group_arrival group_arrival 0
scoreboard players set @a group_answered 0
scoreboard players set @a group_wrong 0
execute store result score #group_target group_target run random value 1..4
tp @a 1100 -59 100 0 0

execute if score #group_target group_target matches 1 run title @a title {"text":"突发舆情与信任危机","color":"aqua","bold":true}
execute if score #group_target group_target matches 1 run title @a subtitle {"text":"前往名誉响应区","color":"aqua"}
execute if score #group_target group_target matches 2 run title @a title {"text":"就业与产业发展议题","color":"yellow","bold":true}
execute if score #group_target group_target matches 2 run title @a subtitle {"text":"前往经济响应区","color":"yellow"}
execute if score #group_target group_target matches 3 run title @a title {"text":"公共服务紧急需求","color":"red","bold":true}
execute if score #group_target group_target matches 3 run title @a subtitle {"text":"前往民生响应区","color":"red"}
execute if score #group_target group_target matches 4 run title @a title {"text":"环境治理与气候预警","color":"green","bold":true}
execute if score #group_target group_target matches 4 run title @a subtitle {"text":"前往生态响应区","color":"green"}
