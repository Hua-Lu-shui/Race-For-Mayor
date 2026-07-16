#处理经济行动任务3中玩家拾取账本C的操作
advancement revoke @s only rfm:audit_pickup_c
execute if score @s action_task matches 703 if score @s audit_state matches 1 run function rfm:task/action/economy/economy_3/give_c
