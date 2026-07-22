#先将所有行动玩家设为第二位，再随机选一人作为第一位
scoreboard players set @a[scores={action_player=1,action_mode=1}] action_order 2
scoreboard players set @a[scores={action_player=1,action_mode=1},sort=random,limit=1] action_order 1

#只有一名行动玩家时，上面的随机选择会直接将其设为第一位
