#默认所有行动玩家分别执行单人行动任务
scoreboard players set @a[scores={action_player=1}] action_mode 1
scoreboard players set @a[scores={action_player=1}] action_role 1

#只有5至8人时才存在两名行动玩家，并以30%的概率转为双人任务
execute if score #player_count player_count matches 5..8 store result score #action_mode_roll action_mode run random value 1..100
execute if score #player_count player_count matches 5..8 if score #action_mode_roll action_mode matches 1..30 run function rfm:task/action/setup_duo
