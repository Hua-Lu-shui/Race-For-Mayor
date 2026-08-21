#执行phase函数对应的游戏流程
#创建阶段计分板
scoreboard objectives add phase dummy
scoreboard objectives add game_session dummy
execute unless score #session game_session matches 0.. run scoreboard players set #session game_session 0
