#单人模式：先将所有行动玩家设为第二位，再随机选一人作为第一位
scoreboard players set @a[scores={action_player=1,action_mode=1}] action_order 2
scoreboard players set @a[scores={action_player=1,action_mode=1},sort=random,limit=1] action_order 1

#只有一名行动玩家时，上面的随机选择会直接将其设为第一位

#双人模式：两名玩家共同执行同一个任务，因此属于同一个第一顺序
scoreboard players set @a[scores={action_player=1,action_mode=2}] action_order 1
