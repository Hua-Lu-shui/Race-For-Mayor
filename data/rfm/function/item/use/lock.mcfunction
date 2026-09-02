execute if score #used_item item_held matches 17 run scoreboard players set @s fame_lock 1
execute if score #used_item item_held matches 17 run scoreboard players operation @s fame_locked = @s fame
execute if score #used_item item_held matches 18 run scoreboard players set @s economy_lock 1
execute if score #used_item item_held matches 18 run scoreboard players operation @s economy_locked = @s economy
execute if score #used_item item_held matches 19 run scoreboard players set @s welfare_lock 1
execute if score #used_item item_held matches 19 run scoreboard players operation @s welfare_locked = @s welfare
execute if score #used_item item_held matches 20 run scoreboard players set @s ecology_lock 1
execute if score #used_item item_held matches 20 run scoreboard players operation @s ecology_locked = @s ecology

execute if score #used_item item_held matches 17 run tellraw @s [{"translate":"rfm.text.f4303d563075","color":"aqua","bold":true},{"translate":"rfm.text.b134df3bb2d8","color":"white"},{"score":{"name":"@s","objective":"fame_locked"},"color":"aqua","bold":true},{"text":"。","color":"white"}]
execute if score #used_item item_held matches 18 run tellraw @s [{"translate":"rfm.text.d45102fb7ba0","color":"yellow","bold":true},{"translate":"rfm.text.e1ed2a110369","color":"white"},{"score":{"name":"@s","objective":"economy_locked"},"color":"yellow","bold":true},{"text":"。","color":"white"}]
execute if score #used_item item_held matches 19 run tellraw @s [{"translate":"rfm.text.71fc58ec4b83","color":"red","bold":true},{"translate":"rfm.text.ca5c0f205a1c","color":"white"},{"score":{"name":"@s","objective":"welfare_locked"},"color":"red","bold":true},{"text":"。","color":"white"}]
execute if score #used_item item_held matches 20 run tellraw @s [{"translate":"rfm.text.d805c477b2b9","color":"green","bold":true},{"translate":"rfm.text.255d861a9b99","color":"white"},{"score":{"name":"@s","objective":"ecology_locked"},"color":"green","bold":true},{"text":"。","color":"white"}]
