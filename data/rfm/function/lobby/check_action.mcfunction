#只接受大厅阶段且仍在告示牌区域内的请求
execute unless score #phase phase matches 0 run scoreboard players set @s lobby_action 0
execute unless score #phase phase matches 0 run return 0
execute positioned 49 -49.5 -18.5 unless entity @s[distance=..16] run scoreboard players set @s lobby_action 0
execute positioned 49 -49.5 -18.5 unless entity @s[distance=..16] run return 0
execute if score @s lobby_action matches 1 run function rfm:candidate/star
execute if score @s lobby_action matches 2 run function rfm:candidate/business
execute if score @s lobby_action matches 3 run function rfm:candidate/community
execute if score @s lobby_action matches 4 run function rfm:candidate/scholar
execute if score @s lobby_action matches 5 run function rfm:candidate/official
execute if score @s lobby_action matches 6 run function rfm:candidate/military
execute if score @s lobby_action matches 7 run function rfm:candidate/lawyer
execute if score @s lobby_action matches 8 run function rfm:candidate/doctor
execute if score @s lobby_action matches 9 run function rfm:tutorial/show
execute if score @s lobby_action matches 10 run function rfm:schedule/start_check
execute if score @s lobby_action matches 11 run function rfm:settings/count_animation/toggle
execute if score @s lobby_action matches 12 run function rfm:settings/decision_time/toggle
scoreboard players set @s lobby_action 0
