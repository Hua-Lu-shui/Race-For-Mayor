#记录其他玩家的旧值
execute if score #used_item item_held matches 25 as @a[tag=!rfm_item_user] run scoreboard players operation @s item_before = @s fame
execute if score #used_item item_held matches 26 as @a[tag=!rfm_item_user] run scoreboard players operation @s item_before = @s economy
execute if score #used_item item_held matches 27 as @a[tag=!rfm_item_user] run scoreboard players operation @s item_before = @s welfare
execute if score #used_item item_held matches 28 as @a[tag=!rfm_item_user] run scoreboard players operation @s item_before = @s ecology

#使用者对应属性+5，其余所有玩家对应属性-5
execute if score #used_item item_held matches 25 run scoreboard players add @a[tag=rfm_item_user] fame 5
execute if score #used_item item_held matches 25 run scoreboard players remove @a[tag=!rfm_item_user] fame 5
execute if score #used_item item_held matches 26 run scoreboard players add @a[tag=rfm_item_user] economy 5
execute if score #used_item item_held matches 26 run scoreboard players remove @a[tag=!rfm_item_user] economy 5
execute if score #used_item item_held matches 27 run scoreboard players add @a[tag=rfm_item_user] welfare 5
execute if score #used_item item_held matches 27 run scoreboard players remove @a[tag=!rfm_item_user] welfare 5
execute if score #used_item item_held matches 28 run scoreboard players add @a[tag=rfm_item_user] ecology 5
execute if score #used_item item_held matches 28 run scoreboard players remove @a[tag=!rfm_item_user] ecology 5
execute as @a[tag=!rfm_item_user] run function rfm:attribute/minimum

#计算其他玩家受到的实际影响
execute if score #used_item item_held matches 25 as @a[tag=!rfm_item_user] run scoreboard players operation @s item_delta = @s fame
execute if score #used_item item_held matches 26 as @a[tag=!rfm_item_user] run scoreboard players operation @s item_delta = @s economy
execute if score #used_item item_held matches 27 as @a[tag=!rfm_item_user] run scoreboard players operation @s item_delta = @s welfare
execute if score #used_item item_held matches 28 as @a[tag=!rfm_item_user] run scoreboard players operation @s item_delta = @s ecology
execute as @a[tag=!rfm_item_user] run scoreboard players operation @s item_delta -= @s item_before

execute if score #used_item item_held matches 25 run tellraw @a [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【名誉专精】；自身名誉 +5，其余所有候选人名誉降低。","color":"aqua"}]
execute if score #used_item item_held matches 26 run tellraw @a [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【经济专精】；自身经济 +5，其余所有候选人经济降低。","color":"yellow"}]
execute if score #used_item item_held matches 27 run tellraw @a [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【民生专精】；自身民生 +5，其余所有候选人民生降低。","color":"red"}]
execute if score #used_item item_held matches 28 run tellraw @a [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【生态专精】；自身生态 +5，其余所有候选人生态降低。","color":"green"}]
execute as @a[tag=!rfm_item_user] run tellraw @a [{"text":"实际影响：","color":"gray"},{"selector":"@s","color":"white"},{"text":" 的对应属性变化 ","color":"gray"},{"score":{"name":"@s","objective":"item_delta"},"color":"red","bold":true}]
