#本函数以互换道具使用者为@s，#swap_target room记录目标办公室
tag @a remove rfm_item_user
tag @a remove rfm_item_target
tag @s add rfm_item_user
execute as @a if score @s room = #swap_target room run tag @s add rfm_item_target
scoreboard players operation #used_item item_held = @s swap_pending
scoreboard players set #swap_blocked item_before 0
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_user] if score @s fame_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_target] if score @s fame_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_user] if score @s economy_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_target] if score @s economy_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_user] if score @s welfare_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_target] if score @s welfare_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_user] if score @s ecology_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_target] if score @s ecology_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #swap_blocked item_before matches 1 run function rfm:item/use/swap/blocked
execute if score #swap_blocked item_before matches 1 run return 0
scoreboard players set @s swap_pending 0

#记录交换前双方数值
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s fame
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s fame
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s economy
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s economy
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s welfare
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s welfare
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s ecology
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s ecology

#执行指定属性交换
execute as @a[tag=rfm_item_user,limit=1] run scoreboard players operation #swap item_before = @s item_before
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s fame = @a[tag=rfm_item_target,limit=1] fame
execute if score #used_item item_held matches 1 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s fame = #swap item_before
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s economy = @a[tag=rfm_item_target,limit=1] economy
execute if score #used_item item_held matches 2 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s economy = #swap item_before
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s welfare = @a[tag=rfm_item_target,limit=1] welfare
execute if score #used_item item_held matches 3 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s welfare = #swap item_before
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_user,limit=1] run scoreboard players operation @s ecology = @a[tag=rfm_item_target,limit=1] ecology
execute if score #used_item item_held matches 4 as @a[tag=rfm_item_target,limit=1] run scoreboard players operation @s ecology = #swap item_before

#计算双方实际变化；使用者可查看完整结果，被换者只收到匿名通知
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

execute if score #used_item item_held matches 1 run tellraw @a[tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【名誉互换】，与 ","color":"aqua"},{"selector":"@a[tag=rfm_item_target,limit=1]","color":"white","bold":true},{"text":" 交换名誉。","color":"aqua"}]
execute if score #used_item item_held matches 2 run tellraw @a[tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【经济互换】，与 ","color":"yellow"},{"selector":"@a[tag=rfm_item_target,limit=1]","color":"white","bold":true},{"text":" 交换经济。","color":"yellow"}]
execute if score #used_item item_held matches 3 run tellraw @a[tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【民生互换】，与 ","color":"red"},{"selector":"@a[tag=rfm_item_target,limit=1]","color":"white","bold":true},{"text":" 交换民生。","color":"red"}]
execute if score #used_item item_held matches 4 run tellraw @a[tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_item_user,limit=1]","color":"white","bold":true},{"text":" 使用了【生态互换】，与 ","color":"green"},{"selector":"@a[tag=rfm_item_target,limit=1]","color":"white","bold":true},{"text":" 交换生态。","color":"green"}]
execute if score #used_item item_held matches 1 run tellraw @a[tag=rfm_item_target,limit=1] {"text":"一名玩家与你互换了名誉。","color":"aqua"}
execute if score #used_item item_held matches 2 run tellraw @a[tag=rfm_item_target,limit=1] {"text":"一名玩家与你互换了经济。","color":"yellow"}
execute if score #used_item item_held matches 3 run tellraw @a[tag=rfm_item_target,limit=1] {"text":"一名玩家与你互换了民生。","color":"red"}
execute if score #used_item item_held matches 4 run tellraw @a[tag=rfm_item_target,limit=1] {"text":"一名玩家与你互换了生态。","color":"green"}
execute as @a[tag=rfm_item_user] run tellraw @a[tag=rfm_item_user,limit=1] [{"text":"实际影响：","color":"gray"},{"selector":"@s","color":"white"},{"text":" 的对应属性变化 ","color":"gray"},{"score":{"name":"@s","objective":"item_delta"},"color":"yellow","bold":true}]
execute as @a[tag=rfm_item_target] run tellraw @a[tag=rfm_item_user,limit=1] [{"text":"实际影响：","color":"gray"},{"selector":"@s","color":"white"},{"text":" 的对应属性变化 ","color":"gray"},{"score":{"name":"@s","objective":"item_delta"},"color":"yellow","bold":true}]

tag @a remove rfm_item_user
tag @a remove rfm_item_target
