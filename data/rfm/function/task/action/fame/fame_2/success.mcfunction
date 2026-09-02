function rfm:task/action/fame/fame_2/reaction_correct
playsound minecraft:entity.villager.celebrate master @a[tag=rfm_participant] ~ ~ ~ 1 1.1 1
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"white"},{"translate":"rfm.text.fbf4156106ad","color":"green"},{"score":{"name":"@s","objective":"visit_answer"},"color":"aqua","bold":true},{"translate":"rfm.text.540a469842d1","color":"green"}]
scoreboard players add @s visit_step 1
execute if score @s visit_step matches ..4 run function rfm:task/action/fame/fame_2/prepare_target
execute if score @s visit_step matches 5.. run function rfm:task/action/fame/fame_2/result
