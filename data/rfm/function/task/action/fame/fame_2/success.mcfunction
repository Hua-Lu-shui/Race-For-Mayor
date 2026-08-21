#正确拜访当前目标住户
function rfm:task/action/fame/fame_2/reaction_correct
playsound minecraft:entity.villager.celebrate master @a[tag=rfm_participant] ~ ~ ~ 1 1.1 1
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"white"},{"text":" 成功拜访了 ","color":"green"},{"score":{"name":"@s","objective":"visit_answer"},"color":"aqua","bold":true},{"text":" 户。","color":"green"}]
scoreboard players add @s visit_step 1
execute if score @s visit_step matches ..4 run function rfm:task/action/fame/fame_2/prepare_target
execute if score @s visit_step matches 5.. run function rfm:task/action/fame/fame_2/result
