#拜访顺序错误：增加错误次数并扣除3秒
function rfm:task/action/fame/fame_2/reaction_wrong
playsound minecraft:entity.villager.no master @a[tag=rfm_participant] ~ ~ ~ 1 0.9 1
scoreboard players add @s visit_wrong 1
scoreboard players remove @s visit_time 60
execute if score @s visit_time matches ..0 run scoreboard players set @s visit_time 0
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.4052ed71a4e0","color":"red"},{"score":{"name":"@s","objective":"visit_target"},"color":"white","bold":true}]
execute if score @s visit_wrong matches 3.. run function rfm:task/action/fame/fame_2/result
