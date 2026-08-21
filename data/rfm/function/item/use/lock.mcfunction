#锁定当前属性值，本局不再受事件、令牌、藏品、身份天赋或任务影响
execute if score #used_item item_held matches 17 run scoreboard players set @s fame_lock 1
execute if score #used_item item_held matches 17 run scoreboard players operation @s fame_locked = @s fame
execute if score #used_item item_held matches 18 run scoreboard players set @s economy_lock 1
execute if score #used_item item_held matches 18 run scoreboard players operation @s economy_locked = @s economy
execute if score #used_item item_held matches 19 run scoreboard players set @s welfare_lock 1
execute if score #used_item item_held matches 19 run scoreboard players operation @s welfare_locked = @s welfare
execute if score #used_item item_held matches 20 run scoreboard players set @s ecology_lock 1
execute if score #used_item item_held matches 20 run scoreboard players operation @s ecology_locked = @s ecology

execute if score #used_item item_held matches 17 run tellraw @s [{"text":"【名誉锁定】","color":"aqua","bold":true},{"text":"名誉已固定为 ","color":"white"},{"score":{"name":"@s","objective":"fame_locked"},"color":"aqua","bold":true},{"text":"。","color":"white"}]
execute if score #used_item item_held matches 18 run tellraw @s [{"text":"【经济锁定】","color":"yellow","bold":true},{"text":"经济已固定为 ","color":"white"},{"score":{"name":"@s","objective":"economy_locked"},"color":"yellow","bold":true},{"text":"。","color":"white"}]
execute if score #used_item item_held matches 19 run tellraw @s [{"text":"【民生锁定】","color":"red","bold":true},{"text":"民生已固定为 ","color":"white"},{"score":{"name":"@s","objective":"welfare_locked"},"color":"red","bold":true},{"text":"。","color":"white"}]
execute if score #used_item item_held matches 20 run tellraw @s [{"text":"【生态锁定】","color":"green","bold":true},{"text":"生态已固定为 ","color":"white"},{"score":{"name":"@s","objective":"ecology_locked"},"color":"green","bold":true},{"text":"。","color":"white"}]
