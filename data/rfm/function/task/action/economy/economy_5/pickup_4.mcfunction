#处理求职登记表4的领取交互
advancement revoke @s only rfm:employment_pickup_4
execute if score @s action_task matches 705 if score @s employment_state matches 1 run function rfm:task/action/economy/economy_5/give_4
