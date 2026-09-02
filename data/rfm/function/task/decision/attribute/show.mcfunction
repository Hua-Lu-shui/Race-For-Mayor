scoreboard players set @s attribute_choice 0

execute store result score @s attribute_missing run random value 1..4

scoreboard players set @s attribute_option_1 0
scoreboard players set @s attribute_option_2 0
scoreboard players set @s attribute_option_3 0

execute if score @s attribute_missing matches 1 run scoreboard players set @s attribute_option_1 2
execute if score @s attribute_missing matches 1 run scoreboard players set @s attribute_option_2 3
execute if score @s attribute_missing matches 1 run scoreboard players set @s attribute_option_3 4

execute if score @s attribute_missing matches 2 run scoreboard players set @s attribute_option_1 1
execute if score @s attribute_missing matches 2 run scoreboard players set @s attribute_option_2 3
execute if score @s attribute_missing matches 2 run scoreboard players set @s attribute_option_3 4

execute if score @s attribute_missing matches 3 run scoreboard players set @s attribute_option_1 1
execute if score @s attribute_missing matches 3 run scoreboard players set @s attribute_option_2 2
execute if score @s attribute_missing matches 3 run scoreboard players set @s attribute_option_3 4

execute if score @s attribute_missing matches 4 run scoreboard players set @s attribute_option_1 1
execute if score @s attribute_missing matches 4 run scoreboard players set @s attribute_option_2 2
execute if score @s attribute_missing matches 4 run scoreboard players set @s attribute_option_3 3

scoreboard players enable @s attribute_choice
tellraw @s [{"translate":"rfm.text.ea1ef355ebe8","color":"white"},{"translate":"rfm.text.ce211a387eac","color":"#C6A8FF","bold":true},{"text":"：","color":"white"}]

execute unless score @s attribute_missing matches 1 run tellraw @s [{"translate":"rfm.text.bd30e95a8691","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger attribute_choice set 1"}},{"translate":"rfm.text.0c392f992619","color":"white"}]

execute unless score @s attribute_missing matches 2 run tellraw @s [{"translate":"rfm.text.f0f3da567bf8","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger attribute_choice set 2"}},{"translate":"rfm.text.5c428b0b9b6f","color":"white"}]

execute unless score @s attribute_missing matches 3 run tellraw @s [{"translate":"rfm.text.ce215a169cfa","color":"red","clickEvent":{"action":"run_command","value":"/trigger attribute_choice set 3"}},{"translate":"rfm.text.60cffbb30104","color":"white"}]

execute unless score @s attribute_missing matches 4 run tellraw @s [{"translate":"rfm.text.2414d2fa3bd3","color":"green","clickEvent":{"action":"run_command","value":"/trigger attribute_choice set 4"}},{"translate":"rfm.text.2d387166f939","color":"white"}]
