#重置本轮行动任务状态
scoreboard players set @a action_player 0
scoreboard players set @a action_task 0
scoreboard players set @a attribute_choice 0
scoreboard players set @a action_attribute_choice 0
scoreboard players set @a action_attribute_option_1 0
scoreboard players set @a action_attribute_option_2 0
scoreboard players set @a action_attribute_option_3 0
scoreboard players set @a action_attribute_missing 0

#统计当前玩家人数并决定行动玩家数量
execute store result score #player_count player_count run execute if entity @a
execute if score #player_count player_count matches ..4 run scoreboard players set #action_quota action_quota 1
execute if score #player_count player_count matches 5..8 run scoreboard players set #action_quota action_quota 2

#随机挑选行动玩家
execute as @a[sort=random] if score #action_quota action_quota matches 1.. run function rfm:task/action/pick_player

tellraw @a {"text":"本轮行动玩家已分配。行动玩家请选择行动任务方向，其他玩家请选择决策任务方向。","color":"yellow"}
tellraw @a[scores={action_player=1}] {"text":"你是本轮行动玩家，请从随机出现的三个属性中选择一个行动方向。","color":"gold","bold":true}
