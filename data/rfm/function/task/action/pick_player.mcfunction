#从候选人中抽取本回合行动玩家
scoreboard players set @s action_player 1
scoreboard players add @s action_draw_count 1
scoreboard players remove #action_quota action_quota 1
