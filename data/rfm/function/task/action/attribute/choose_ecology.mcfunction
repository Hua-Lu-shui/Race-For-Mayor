scoreboard players set @s action_attribute_choice 0
#单人生态行动任务使用901至905，双人生态行动任务使用1301至1305
execute if score @s action_mode matches 1 store result score @s action_task run random value 901..905
execute if score @s action_mode matches 2 if score @s action_role matches 2 store result score @s action_task run random value 1301..1305
#双人模式下，将队长抽中的任务编号同步给队员
execute if score @s action_mode matches 2 if score @s action_role matches 2 run scoreboard players operation @a[scores={action_player=1,action_role=3},limit=1] action_task = @s action_task
tellraw @s {"text":"你已选择生态行动任务，请等待选择倒计时结束后公布详细教程。","color":"green"}
execute if score @s action_mode matches 2 run tellraw @a[scores={action_role=3}] {"text":"队长已经选择生态行动方向，请等待任务公布。","color":"green"}
