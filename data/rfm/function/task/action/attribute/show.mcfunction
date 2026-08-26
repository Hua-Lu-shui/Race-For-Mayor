scoreboard players set @s action_attribute_choice 0

#从四种属性中随机隐藏一种，剩下三种给行动玩家选择
execute store result score @s action_attribute_missing run random value 1..4
#若该玩家某类五项任务均已抽过，则不随机隐藏其他方向，改为显示所有仍可选的方向
execute if score @s action_used_fame matches 31 run scoreboard players set @s action_attribute_missing 0
execute if score @s action_used_econ matches 31 run scoreboard players set @s action_attribute_missing 0
execute if score @s action_used_welf matches 31 run scoreboard players set @s action_attribute_missing 0
execute if score @s action_used_eco matches 31 run scoreboard players set @s action_attribute_missing 0

scoreboard players set @s action_attribute_option_1 0
scoreboard players set @s action_attribute_option_2 0
scoreboard players set @s action_attribute_option_3 0

execute if score @s action_attribute_missing matches 1 run scoreboard players set @s action_attribute_option_1 2
execute if score @s action_attribute_missing matches 1 run scoreboard players set @s action_attribute_option_2 3
execute if score @s action_attribute_missing matches 1 run scoreboard players set @s action_attribute_option_3 4

execute if score @s action_attribute_missing matches 2 run scoreboard players set @s action_attribute_option_1 1
execute if score @s action_attribute_missing matches 2 run scoreboard players set @s action_attribute_option_2 3
execute if score @s action_attribute_missing matches 2 run scoreboard players set @s action_attribute_option_3 4

execute if score @s action_attribute_missing matches 3 run scoreboard players set @s action_attribute_option_1 1
execute if score @s action_attribute_missing matches 3 run scoreboard players set @s action_attribute_option_2 2
execute if score @s action_attribute_missing matches 3 run scoreboard players set @s action_attribute_option_3 4

execute if score @s action_attribute_missing matches 4 run scoreboard players set @s action_attribute_option_1 1
execute if score @s action_attribute_missing matches 4 run scoreboard players set @s action_attribute_option_2 2
execute if score @s action_attribute_missing matches 4 run scoreboard players set @s action_attribute_option_3 3

#允许玩家改变行动任务属性计分板
scoreboard players enable @s action_attribute_choice
#提示选择任务类型
tellraw @s [{"translate":"rfm.text.ea1ef355ebe8","color":"white"},{"translate":"rfm.text.a546c0da79fe","color":"#67D5FF","bold":true},{"text":"：","color":"white"}]

execute unless score @s action_attribute_missing matches 1 unless score @s action_used_fame matches 31 run tellraw @s [{"translate":"rfm.text.e29d5e39457d","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger action_attribute_choice set 1"}},{"translate":"rfm.text.4f49bea983a5","color":"white"}]

execute unless score @s action_attribute_missing matches 2 unless score @s action_used_econ matches 31 run tellraw @s [{"translate":"rfm.text.d491adf80f47","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger action_attribute_choice set 2"}},{"translate":"rfm.text.c32f68ae0e88","color":"white"}]

execute unless score @s action_attribute_missing matches 3 unless score @s action_used_welf matches 31 run tellraw @s [{"translate":"rfm.text.6e9379bb0f89","color":"red","clickEvent":{"action":"run_command","value":"/trigger action_attribute_choice set 3"}},{"translate":"rfm.text.4366285d9e96","color":"white"}]

execute unless score @s action_attribute_missing matches 4 unless score @s action_used_eco matches 31 run tellraw @s [{"translate":"rfm.text.f6b8445ba52e","color":"green","clickEvent":{"action":"run_command","value":"/trigger action_attribute_choice set 4"}},{"translate":"rfm.text.37ef9123d7ae","color":"white"}]
