#锁定当前属性值，本局不再受事件、道具或任务影响
execute if score #used_item item_held matches 17 run scoreboard players set @s fame_lock 1
execute if score #used_item item_held matches 17 run scoreboard players operation @s fame_locked = @s fame
execute if score #used_item item_held matches 17 run scoreboard players operation @s fame_last = @s fame
execute if score #used_item item_held matches 17 run scoreboard players set @s fame_delta 0
execute if score #used_item item_held matches 18 run scoreboard players set @s economy_lock 1
execute if score #used_item item_held matches 18 run scoreboard players operation @s economy_locked = @s economy
execute if score #used_item item_held matches 18 run scoreboard players operation @s econ_last = @s economy
execute if score #used_item item_held matches 18 run scoreboard players set @s econ_delta 0
execute if score #used_item item_held matches 19 run scoreboard players set @s welfare_lock 1
execute if score #used_item item_held matches 19 run scoreboard players operation @s welfare_locked = @s welfare
execute if score #used_item item_held matches 19 run scoreboard players operation @s welfare_last = @s welfare
execute if score #used_item item_held matches 19 run scoreboard players set @s welfare_delta 0
execute if score #used_item item_held matches 20 run scoreboard players set @s ecology_lock 1
execute if score #used_item item_held matches 20 run scoreboard players operation @s ecology_locked = @s ecology
execute if score #used_item item_held matches 20 run scoreboard players operation @s eco_last = @s ecology
execute if score #used_item item_held matches 20 run scoreboard players set @s eco_delta 0

execute if score #used_item item_held matches 17 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【名誉锁定】；其名誉固定为 ","color":"aqua"},{"score":{"name":"@s","objective":"fame_locked"},"color":"black","bold":true},{"text":"。","color":"aqua"}]
execute if score #used_item item_held matches 18 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【经济锁定】；其经济固定为 ","color":"yellow"},{"score":{"name":"@s","objective":"economy_locked"},"color":"black","bold":true},{"text":"。","color":"yellow"}]
execute if score #used_item item_held matches 19 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【民生锁定】；其民生固定为 ","color":"red"},{"score":{"name":"@s","objective":"welfare_locked"},"color":"black","bold":true},{"text":"。","color":"red"}]
execute if score #used_item item_held matches 20 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【生态锁定】；其生态固定为 ","color":"green"},{"score":{"name":"@s","objective":"ecology_locked"},"color":"black","bold":true},{"text":"。","color":"green"}]
