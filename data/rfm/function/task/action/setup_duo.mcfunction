#两名行动玩家共同执行一个双人行动任务
scoreboard players set @a[scores={action_player=1}] action_mode 2

#先将两人设为队员，再随机选出一名队长
scoreboard players set @a[scores={action_player=1}] action_role 3
scoreboard players set @a[scores={action_player=1},sort=random,limit=1] action_role 2

tellraw @a {"text":"本轮抽中了双人行动任务！","color":"gold","bold":true}
tellraw @a[scores={action_role=2}] {"text":"你是双人行动队长，请从随机出现的三个属性中选择一个行动方向。","color":"yellow","bold":true}
tellraw @a[scores={action_role=3}] {"text":"你是双人行动队员，请等待队长选择行动方向。","color":"yellow"}
