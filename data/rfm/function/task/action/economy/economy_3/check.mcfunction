execute if score @s audit_answer = @s audit_target run scoreboard players set @s audit_correct 1
execute if score @s audit_answer = @s audit_target run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.511d655cd844","color":"green","bold":true}
execute if score @s audit_answer = @s audit_target run playsound minecraft:entity.experience_orb.pickup master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
execute unless score @s audit_answer = @s audit_target run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.c1be5a0f50ae","color":"red","bold":true}
execute unless score @s audit_answer = @s audit_target run playsound minecraft:entity.villager.no master @a[tag=rfm_participant] ~ ~ ~ 1 1 1
function rfm:task/action/economy/economy_3/result
