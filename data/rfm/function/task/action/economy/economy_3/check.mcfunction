#检查经济行动任务3中的玩家操作并记录结果
execute if score @s audit_answer = @s audit_target run scoreboard players set @s audit_correct 1
execute if score @s audit_answer = @s audit_target run tellraw @a[tag=rfm_participant] {"text":"提交正确，各部分花费之和与最后一页的总费用不符！","color":"green","bold":true}
execute if score @s audit_answer = @s audit_target run playsound minecraft:entity.experience_orb.pickup master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
execute unless score @s audit_answer = @s audit_target run tellraw @a[tag=rfm_participant] {"text":"提交错误，这本账各部分花费之和等于最后一页的总费用。","color":"red","bold":true}
execute unless score @s audit_answer = @s audit_target run playsound minecraft:entity.villager.no master @a[tag=rfm_participant] ~ ~ ~ 1 1 1
function rfm:task/action/economy/economy_3/result
