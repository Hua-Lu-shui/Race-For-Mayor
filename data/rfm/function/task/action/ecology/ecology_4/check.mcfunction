execute if score @s trash_answer = @s trash_target run scoreboard players add @s trash_correct 1
execute if score @s trash_answer = @s trash_target run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.c84a2dff15d0","color":"green","bold":true},{"translate":"rfm.text.e02b0573ab8b","color":"white"},{"score":{"name":"@s","objective":"trash_correct"},"color":"green"}]
execute if score @s trash_answer = @s trash_target run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2 1
execute unless score @s trash_answer = @s trash_target run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.a34aff19c23a","color":"red","bold":true}
execute unless score @s trash_answer = @s trash_target run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

data remove block 236 -59 65 Items
data remove block 232 -59 69 Items
data remove block 236 -59 73 Items
data remove block 240 -59 69 Items

scoreboard players add @s trash_round 1
bossbar set rfm:trash_time name [{"translate":"rfm.text.4091a3d91997","color":"green"},{"score":{"name":"@s","objective":"trash_round"},"color":"yellow"},{"translate":"rfm.text.3a4d9de6ee55","color":"green"},{"score":{"name":"@s","objective":"trash_correct"},"color":"gold"}]
execute if score @s trash_round matches ..9 run function rfm:task/action/ecology/ecology_4/give_item
execute if score @s trash_round matches 10.. run function rfm:task/action/ecology/ecology_4/result
