scoreboard objectives add phase dummy
scoreboard objectives add game_session dummy
execute unless score #session game_session matches 0.. run scoreboard players set #session game_session 0
