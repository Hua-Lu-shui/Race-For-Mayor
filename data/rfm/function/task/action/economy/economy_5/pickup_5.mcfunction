#处理求职登记表5的领取交互
advancement revoke @s only rfm:employment_pickup_5
execute if score @s action_task matches 705 if score @s employment_state matches 1 run function rfm:task/action/economy/economy_5/give_5
