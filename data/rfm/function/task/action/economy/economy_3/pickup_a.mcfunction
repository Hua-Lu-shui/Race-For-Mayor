#处理经济行动任务3中玩家拾取账本A的操作
advancement revoke @s only rfm:audit_pickup_a
execute if score @s action_task matches 703 if score @s audit_state matches 1 run function rfm:task/action/economy/economy_3/give_a
