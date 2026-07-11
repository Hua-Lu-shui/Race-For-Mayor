scoreboard players set @s action_attribute_choice 0
#单人民生行动任务使用801至805，双人民生行动任务使用1201至1205
execute if score @s action_mode matches 1 store result score @s action_task run random value 801..805
execute if score @s action_mode matches 2 if score @s action_role matches 2 store result score @s action_task run random value 1201..1205
#双人模式下，将队长抽中的任务编号同步给队员
execute if score @s action_mode matches 2 if score @s action_role matches 2 run scoreboard players operation @a[scores={action_player=1,action_role=3},limit=1] action_task = @s action_task
tellraw @s {"text":"你已选择民生行动任务，请等待选择倒计时结束后公布详细教程。","color":"red"}
execute if score @s action_mode matches 2 run tellraw @a[scores={action_role=3}] {"text":"队长已经选择民生行动方向，请等待任务公布。","color":"red"}
