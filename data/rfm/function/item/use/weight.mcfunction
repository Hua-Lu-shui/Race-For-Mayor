#记录目标权重的旧值
execute if score #used_item item_held matches 5 run scoreboard players operation @s item_before = #weight fame_weight
execute if score #used_item item_held matches 6 run scoreboard players operation @s item_before = #weight economy_weight
execute if score #used_item item_held matches 7 run scoreboard players operation @s item_before = #weight welfare_weight
execute if score #used_item item_held matches 8 run scoreboard players operation @s item_before = #weight ecology_weight
execute if score #used_item item_held matches 9 run scoreboard players operation @s item_before = #weight fame_weight
execute if score #used_item item_held matches 10 run scoreboard players operation @s item_before = #weight economy_weight
execute if score #used_item item_held matches 11 run scoreboard players operation @s item_before = #weight welfare_weight
execute if score #used_item item_held matches 12 run scoreboard players operation @s item_before = #weight ecology_weight

#权重加强
execute if score #used_item item_held matches 5 run scoreboard players add #weight fame_weight 2
execute if score #used_item item_held matches 6 run scoreboard players add #weight economy_weight 2
execute if score #used_item item_held matches 7 run scoreboard players add #weight welfare_weight 2
execute if score #used_item item_held matches 8 run scoreboard players add #weight ecology_weight 2
#权重削弱，最低为1
execute if score #used_item item_held matches 9 run scoreboard players remove #weight fame_weight 2
execute if score #used_item item_held matches 10 run scoreboard players remove #weight economy_weight 2
execute if score #used_item item_held matches 11 run scoreboard players remove #weight welfare_weight 2
execute if score #used_item item_held matches 12 run scoreboard players remove #weight ecology_weight 2
function rfm:attribute/weight_minimum

#计算实际变化量（削弱令牌可能受到权重最低为1的限制）
execute if score #used_item item_held matches 5 run scoreboard players operation @s item_delta = #weight fame_weight
execute if score #used_item item_held matches 6 run scoreboard players operation @s item_delta = #weight economy_weight
execute if score #used_item item_held matches 7 run scoreboard players operation @s item_delta = #weight welfare_weight
execute if score #used_item item_held matches 8 run scoreboard players operation @s item_delta = #weight ecology_weight
execute if score #used_item item_held matches 9 run scoreboard players operation @s item_delta = #weight fame_weight
execute if score #used_item item_held matches 10 run scoreboard players operation @s item_delta = #weight economy_weight
execute if score #used_item item_held matches 11 run scoreboard players operation @s item_delta = #weight welfare_weight
execute if score #used_item item_held matches 12 run scoreboard players operation @s item_delta = #weight ecology_weight
scoreboard players operation @s item_delta -= @s item_before

execute if score #used_item item_held matches 5 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【名誉权重加强】；名誉权重实际变化 ","color":"aqua"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"text":"，当前为 ","color":"aqua"},{"score":{"name":"#weight","objective":"fame_weight"},"color":"white","bold":true},{"text":"。","color":"aqua"}]
execute if score #used_item item_held matches 6 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【经济权重加强】；经济权重实际变化 ","color":"yellow"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"text":"，当前为 ","color":"yellow"},{"score":{"name":"#weight","objective":"economy_weight"},"color":"white","bold":true},{"text":"。","color":"yellow"}]
execute if score #used_item item_held matches 7 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【民生权重加强】；民生权重实际变化 ","color":"red"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"text":"，当前为 ","color":"red"},{"score":{"name":"#weight","objective":"welfare_weight"},"color":"white","bold":true},{"text":"。","color":"red"}]
execute if score #used_item item_held matches 8 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【生态权重加强】；生态权重实际变化 ","color":"green"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"text":"，当前为 ","color":"green"},{"score":{"name":"#weight","objective":"ecology_weight"},"color":"white","bold":true},{"text":"。","color":"green"}]
execute if score #used_item item_held matches 9 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【名誉权重削弱】；名誉权重实际变化 ","color":"aqua"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"text":"，当前为 ","color":"aqua"},{"score":{"name":"#weight","objective":"fame_weight"},"color":"white","bold":true},{"text":"。","color":"aqua"}]
execute if score #used_item item_held matches 10 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【经济权重削弱】；经济权重实际变化 ","color":"yellow"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"text":"，当前为 ","color":"yellow"},{"score":{"name":"#weight","objective":"economy_weight"},"color":"white","bold":true},{"text":"。","color":"yellow"}]
execute if score #used_item item_held matches 11 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【民生权重削弱】；民生权重实际变化 ","color":"red"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"text":"，当前为 ","color":"red"},{"score":{"name":"#weight","objective":"welfare_weight"},"color":"white","bold":true},{"text":"。","color":"red"}]
execute if score #used_item item_held matches 12 run tellraw @s [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【生态权重削弱】；生态权重实际变化 ","color":"green"},{"score":{"name":"@s","objective":"item_delta"},"color":"white","bold":true},{"text":"，当前为 ","color":"green"},{"score":{"name":"#weight","objective":"ecology_weight"},"color":"white","bold":true},{"text":"。","color":"green"}]
