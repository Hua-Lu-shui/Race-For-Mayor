scoreboard players set #event_every_round game_setting 0
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.0
tellraw @s {"translate":"rfm.settings.event_frequency.odd_rounds","color":"yellow"}
