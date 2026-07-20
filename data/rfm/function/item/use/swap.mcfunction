#找出对应属性的当前最高者；并列时随机选择其中一人，优先选择使用者以外的领先者
tag @a remove rfm_item_leader
tag @a remove rfm_item_target
scoreboard players set #item_best item_before -2147483648
execute if score #used_item item_held matches 1 as @a if score @s fame > #item_best item_before run scoreboard players operation #item_best item_before = @s fame
execute if score #used_item item_held matches 2 as @a if score @s economy > #item_best item_before run scoreboard players operation #item_best item_before = @s economy
execute if score #used_item item_held matches 3 as @a if score @s welfare > #item_best item_before run scoreboard players operation #item_best item_before = @s welfare
execute if score #used_item item_held matches 4 as @a if score @s ecology > #item_best item_before run scoreboard players operation #item_best item_before = @s ecology
execute if score #used_item item_held matches 1 as @a if score @s fame = #item_best item_before run tag @s add rfm_item_leader
execute if score #used_item item_held matches 2 as @a if score @s economy = #item_best item_before run tag @s add rfm_item_leader
execute if score #used_item item_held matches 3 as @a if score @s welfare = #item_best item_before run tag @s add rfm_item_leader
execute if score #used_item item_held matches 4 as @a if score @s ecology = #item_best item_before run tag @s add rfm_item_leader
execute as @a[tag=rfm_item_leader,tag=!rfm_item_user,sort=random,limit=1] run tag @s add rfm_item_target
execute unless entity @a[tag=rfm_item_target] run tag @a[tag=rfm_item_user,limit=1] add rfm_item_target

#记录交换前双方数值
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s fame
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s fame
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s economy
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s economy
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s welfare
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s welfare
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s ecology
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s ecology

#执行交换
execute as @a[tag=rfm_item_user,limit=1] run scoreboard players operation #swap item_before = @s item_before
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s fame = @a[tag=rfm_item_target,limit=1] fame
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s fame = #swap item_before
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s economy = @a[tag=rfm_item_target,limit=1] economy
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s economy = #swap item_before
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s welfare = @a[tag=rfm_item_target,limit=1] welfare
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s welfare = #swap item_before
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s ecology = @a[tag=rfm_item_target,limit=1] ecology
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s ecology = #swap item_before

#计算并公布双方实际变化
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_user] run scoreboard players operation @s item_delta = @s fame
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_target] run scoreboard players operation @s item_delta = @s fame
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_user] run scoreboard players operation @s item_delta = @s economy
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_target] run scoreboard players operation @s item_delta = @s economy
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_user] run scoreboard players operation @s item_delta = @s welfare
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_target] run scoreboard players operation @s item_delta = @s welfare
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_user] run scoreboard players operation @s item_delta = @s ecology
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_target] run scoreboard players operation @s item_delta = @s ecology
execute as @a[tag=rfm_item_user] run scoreboard players operation @s item_delta -= @s item_before
execute as @a[tag=rfm_item_target] run scoreboard players operation @s item_delta -= @s item_before

execute if score #used_item item_held matches 1 run tellraw @a [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【名誉互换】，与 ","color":"aqua"},{"selector":"@a[tag=rfm_item_target,limit=1]","color":"white","bold":true},{"text":" 交换名誉。","color":"aqua"}]
execute if score #used_item item_held matches 2 run tellraw @a [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【经济互换】，与 ","color":"yellow"},{"selector":"@a[tag=rfm_item_target,limit=1]","color":"white","bold":true},{"text":" 交换经济。","color":"yellow"}]
execute if score #used_item item_held matches 3 run tellraw @a [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【民生互换】，与 ","color":"red"},{"selector":"@a[tag=rfm_item_target,limit=1]","color":"white","bold":true},{"text":" 交换民生。","color":"red"}]
execute if score #used_item item_held matches 4 run tellraw @a [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【生态互换】，与 ","color":"green"},{"selector":"@a[tag=rfm_item_target,limit=1]","color":"white","bold":true},{"text":" 交换生态。","color":"green"}]
execute as @a[tag=rfm_item_user] run tellraw @a [{"text":"实际影响：","color":"gray"},{"selector":"@s","color":"white"},{"text":" 的对应属性变化 ","color":"gray"},{"score":{"name":"@s","objective":"item_delta"},"color":"yellow","bold":true}]
execute as @a[tag=rfm_item_target,tag=!rfm_item_user] run tellraw @a [{"text":"实际影响：","color":"gray"},{"selector":"@s","color":"white"},{"text":" 的对应属性变化 ","color":"gray"},{"score":{"name":"@s","objective":"item_delta"},"color":"yellow","bold":true}]

tag @a remove rfm_item_leader
tag @a remove rfm_item_target
