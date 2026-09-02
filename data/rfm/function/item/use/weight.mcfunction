execute if score #used_item item_held matches 5 run scoreboard players operation @s item_before = #weight fame_weight
execute if score #used_item item_held matches 6 run scoreboard players operation @s item_before = #weight economy_weight
execute if score #used_item item_held matches 7 run scoreboard players operation @s item_before = #weight welfare_weight
execute if score #used_item item_held matches 8 run scoreboard players operation @s item_before = #weight ecology_weight
execute if score #used_item item_held matches 9 run scoreboard players operation @s item_before = #weight fame_weight
execute if score #used_item item_held matches 10 run scoreboard players operation @s item_before = #weight economy_weight
execute if score #used_item item_held matches 11 run scoreboard players operation @s item_before = #weight welfare_weight
execute if score #used_item item_held matches 12 run scoreboard players operation @s item_before = #weight ecology_weight

execute if score #used_item item_held matches 5 run scoreboard players add #weight fame_weight 2
execute if score #used_item item_held matches 6 run scoreboard players add #weight economy_weight 2
execute if score #used_item item_held matches 7 run scoreboard players add #weight welfare_weight 2
execute if score #used_item item_held matches 8 run scoreboard players add #weight ecology_weight 2
execute if score #used_item item_held matches 9 run scoreboard players remove #weight fame_weight 2
execute if score #used_item item_held matches 10 run scoreboard players remove #weight economy_weight 2
execute if score #used_item item_held matches 11 run scoreboard players remove #weight welfare_weight 2
execute if score #used_item item_held matches 12 run scoreboard players remove #weight ecology_weight 2
function rfm:attribute/weight_minimum

execute if score #used_item item_held matches 5 run scoreboard players operation @s item_delta = #weight fame_weight
execute if score #used_item item_held matches 6 run scoreboard players operation @s item_delta = #weight economy_weight
execute if score #used_item item_held matches 7 run scoreboard players operation @s item_delta = #weight welfare_weight
execute if score #used_item item_held matches 8 run scoreboard players operation @s item_delta = #weight ecology_weight
execute if score #used_item item_held matches 9 run scoreboard players operation @s item_delta = #weight fame_weight
execute if score #used_item item_held matches 10 run scoreboard players operation @s item_delta = #weight economy_weight
execute if score #used_item item_held matches 11 run scoreboard players operation @s item_delta = #weight welfare_weight
execute if score #used_item item_held matches 12 run scoreboard players operation @s item_delta = #weight ecology_weight
scoreboard players operation @s item_delta -= @s item_before

execute if score #used_item item_held matches 5 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"translate":"rfm.text.316c042a44ea","color":"aqua"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"translate":"rfm.text.73ef993c6fc0","color":"aqua"},{"score":{"name":"#weight","objective":"fame_weight"},"color":"white","bold":true},{"text":"。","color":"aqua"}]
execute if score #used_item item_held matches 6 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"translate":"rfm.text.ba45acea884b","color":"yellow"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"translate":"rfm.text.73ef993c6fc0","color":"yellow"},{"score":{"name":"#weight","objective":"economy_weight"},"color":"white","bold":true},{"text":"。","color":"yellow"}]
execute if score #used_item item_held matches 7 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"translate":"rfm.text.06318f646293","color":"red"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"translate":"rfm.text.73ef993c6fc0","color":"red"},{"score":{"name":"#weight","objective":"welfare_weight"},"color":"white","bold":true},{"text":"。","color":"red"}]
execute if score #used_item item_held matches 8 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"translate":"rfm.text.1637f303de43","color":"green"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"translate":"rfm.text.73ef993c6fc0","color":"green"},{"score":{"name":"#weight","objective":"ecology_weight"},"color":"white","bold":true},{"text":"。","color":"green"}]
execute if score #used_item item_held matches 9 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"translate":"rfm.text.8deca895de7c","color":"aqua"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"translate":"rfm.text.73ef993c6fc0","color":"aqua"},{"score":{"name":"#weight","objective":"fame_weight"},"color":"white","bold":true},{"text":"。","color":"aqua"}]
execute if score #used_item item_held matches 10 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"translate":"rfm.text.a4402084a6e9","color":"yellow"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"translate":"rfm.text.73ef993c6fc0","color":"yellow"},{"score":{"name":"#weight","objective":"economy_weight"},"color":"white","bold":true},{"text":"。","color":"yellow"}]
execute if score #used_item item_held matches 11 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"translate":"rfm.text.6351f8f7592e","color":"red"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"translate":"rfm.text.73ef993c6fc0","color":"red"},{"score":{"name":"#weight","objective":"welfare_weight"},"color":"white","bold":true},{"text":"。","color":"red"}]
execute if score #used_item item_held matches 12 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"translate":"rfm.text.d1d9b71560a8","color":"green"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"translate":"rfm.text.73ef993c6fc0","color":"green"},{"score":{"name":"#weight","objective":"ecology_weight"},"color":"white","bold":true},{"text":"。","color":"green"}]
