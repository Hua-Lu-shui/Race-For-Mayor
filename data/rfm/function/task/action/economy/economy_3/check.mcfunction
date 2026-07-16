#检查经济行动任务3中的玩家操作并记录结果
execute if score @s audit_answer = @s audit_target run scoreboard players set @s audit_correct 1
execute if score @s audit_answer = @s audit_target run tellraw @a {"text":"提交正确，账本中的申报金额与实际核算结果不符！","color":"green","bold":true}
execute if score @s audit_answer = @s audit_target run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.2 1
execute unless score @s audit_answer = @s audit_target run tellraw @a {"text":"提交错误，这本账的申报金额可以由有效支出正确计算得到。","color":"red","bold":true}
execute unless score @s audit_answer = @s audit_target run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 1 1
function rfm:task/action/economy/economy_3/result
