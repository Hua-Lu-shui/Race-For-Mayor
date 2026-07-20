#先记录被降低属性的旧值
execute if score #used_item item_held matches 13 run scoreboard players operation @s item_before = @s economy
execute if score #used_item item_held matches 14 run scoreboard players operation @s item_before = @s welfare
execute if score #used_item item_held matches 15 run scoreboard players operation @s item_before = @s ecology
execute if score #used_item item_held matches 16 run scoreboard players operation @s item_before = @s fame
execute if score #used_item item_held matches 17 run scoreboard players operation @s item_before = @s welfare
execute if score #used_item item_held matches 18 run scoreboard players operation @s item_before = @s ecology
execute if score #used_item item_held matches 19 run scoreboard players operation @s item_before = @s fame
execute if score #used_item item_held matches 20 run scoreboard players operation @s item_before = @s economy
execute if score #used_item item_held matches 21 run scoreboard players operation @s item_before = @s ecology
execute if score #used_item item_held matches 22 run scoreboard players operation @s item_before = @s fame
execute if score #used_item item_held matches 23 run scoreboard players operation @s item_before = @s economy
execute if score #used_item item_held matches 24 run scoreboard players operation @s item_before = @s welfare

#执行12种属性取舍
execute if score #used_item item_held matches 13 run scoreboard players add @s fame 10
execute if score #used_item item_held matches 13 run scoreboard players remove @s economy 2
execute if score #used_item item_held matches 14 run scoreboard players add @s fame 10
execute if score #used_item item_held matches 14 run scoreboard players remove @s welfare 2
execute if score #used_item item_held matches 15 run scoreboard players add @s fame 10
execute if score #used_item item_held matches 15 run scoreboard players remove @s ecology 2
execute if score #used_item item_held matches 16 run scoreboard players add @s economy 10
execute if score #used_item item_held matches 16 run scoreboard players remove @s fame 2
execute if score #used_item item_held matches 17 run scoreboard players add @s economy 10
execute if score #used_item item_held matches 17 run scoreboard players remove @s welfare 2
execute if score #used_item item_held matches 18 run scoreboard players add @s economy 10
execute if score #used_item item_held matches 18 run scoreboard players remove @s ecology 2
execute if score #used_item item_held matches 19 run scoreboard players add @s welfare 10
execute if score #used_item item_held matches 19 run scoreboard players remove @s fame 2
execute if score #used_item item_held matches 20 run scoreboard players add @s welfare 10
execute if score #used_item item_held matches 20 run scoreboard players remove @s economy 2
execute if score #used_item item_held matches 21 run scoreboard players add @s welfare 10
execute if score #used_item item_held matches 21 run scoreboard players remove @s ecology 2
execute if score #used_item item_held matches 22 run scoreboard players add @s ecology 10
execute if score #used_item item_held matches 22 run scoreboard players remove @s fame 2
execute if score #used_item item_held matches 23 run scoreboard players add @s ecology 10
execute if score #used_item item_held matches 23 run scoreboard players remove @s economy 2
execute if score #used_item item_held matches 24 run scoreboard players add @s ecology 10
execute if score #used_item item_held matches 24 run scoreboard players remove @s welfare 2
function rfm:attribute/minimum

#计算被降低属性的实际变化量
execute if score #used_item item_held matches 13 run scoreboard players operation @s item_delta = @s economy
execute if score #used_item item_held matches 14 run scoreboard players operation @s item_delta = @s welfare
execute if score #used_item item_held matches 15 run scoreboard players operation @s item_delta = @s ecology
execute if score #used_item item_held matches 16 run scoreboard players operation @s item_delta = @s fame
execute if score #used_item item_held matches 17 run scoreboard players operation @s item_delta = @s welfare
execute if score #used_item item_held matches 18 run scoreboard players operation @s item_delta = @s ecology
execute if score #used_item item_held matches 19 run scoreboard players operation @s item_delta = @s fame
execute if score #used_item item_held matches 20 run scoreboard players operation @s item_delta = @s economy
execute if score #used_item item_held matches 21 run scoreboard players operation @s item_delta = @s ecology
execute if score #used_item item_held matches 22 run scoreboard players operation @s item_delta = @s fame
execute if score #used_item item_held matches 23 run scoreboard players operation @s item_delta = @s economy
execute if score #used_item item_held matches 24 run scoreboard players operation @s item_delta = @s welfare
scoreboard players operation @s item_delta -= @s item_before

execute if score #used_item item_held matches 13 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【名誉优先·牺牲经济】；名誉 +10，经济实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"yellow","bold":true},{"text":"。","color":"gold"}]
execute if score #used_item item_held matches 14 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【名誉优先·牺牲民生】；名誉 +10，民生实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"red","bold":true},{"text":"。","color":"gold"}]
execute if score #used_item item_held matches 15 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【名誉优先·牺牲生态】；名誉 +10，生态实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"green","bold":true},{"text":"。","color":"gold"}]
execute if score #used_item item_held matches 16 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【经济优先·牺牲名誉】；经济 +10，名誉实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"aqua","bold":true},{"text":"。","color":"gold"}]
execute if score #used_item item_held matches 17 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【经济优先·牺牲民生】；经济 +10，民生实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"red","bold":true},{"text":"。","color":"gold"}]
execute if score #used_item item_held matches 18 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【经济优先·牺牲生态】；经济 +10，生态实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"green","bold":true},{"text":"。","color":"gold"}]
execute if score #used_item item_held matches 19 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【民生优先·牺牲名誉】；民生 +10，名誉实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"aqua","bold":true},{"text":"。","color":"gold"}]
execute if score #used_item item_held matches 20 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【民生优先·牺牲经济】；民生 +10，经济实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"yellow","bold":true},{"text":"。","color":"gold"}]
execute if score #used_item item_held matches 21 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【民生优先·牺牲生态】；民生 +10，生态实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"green","bold":true},{"text":"。","color":"gold"}]
execute if score #used_item item_held matches 22 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【生态优先·牺牲名誉】；生态 +10，名誉实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"aqua","bold":true},{"text":"。","color":"gold"}]
execute if score #used_item item_held matches 23 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【生态优先·牺牲经济】；生态 +10，经济实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"yellow","bold":true},{"text":"。","color":"gold"}]
execute if score #used_item item_held matches 24 run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":" 使用了【生态优先·牺牲民生】；生态 +10，民生实际变化 ","color":"gold"},{"score":{"name":"@s","objective":"item_delta"},"color":"red","bold":true},{"text":"。","color":"gold"}]
