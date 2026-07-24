#找出尚未入选玩家中的最低行动次数
scoreboard players set #minimum action_draw_count 2147483647
execute as @a[scores={action_player=0}] if score @s action_draw_count < #minimum action_draw_count run scoreboard players operation #minimum action_draw_count = @s action_draw_count

#在最低次数层内随机抽取，直到本层人数或本轮名额用完
execute as @a[scores={action_player=0},sort=random] if score #action_quota action_quota matches 1.. if score @s action_draw_count = #minimum action_draw_count run function rfm:task/action/pick_player

#最低次数层人数不足时，重新计算下一层；没有候选人时停止
execute if score #action_quota action_quota matches 1.. unless entity @a[scores={action_player=0}] run scoreboard players set #action_quota action_quota 0
execute if score #action_quota action_quota matches 1.. run function rfm:task/action/select_fair_players
