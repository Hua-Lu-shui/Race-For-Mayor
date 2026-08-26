#本函数以互换令牌使用者为@s，#swap_target room记录目标办公室
tag @a[tag=rfm_participant] remove rfm_item_user
tag @a[tag=rfm_participant] remove rfm_item_target
tag @s add rfm_item_user
execute as @a[tag=rfm_participant] if score @s room = #swap_target room run tag @s add rfm_item_target
scoreboard players operation #used_item item_held = @s swap_pending
scoreboard players set #swap_blocked item_before 0
#律师可以主动使用互换令牌，但不能成为其他玩家的互换目标
execute if entity @a[tag=rfm_participant,tag=rfm_item_target,scores={candidate=7}] run scoreboard players set #swap_blocked item_before 2
execute if score #swap_blocked item_before matches 2 run function rfm:item/use/swap/lawyer_blocked
execute if score #swap_blocked item_before matches 2 run return 0
execute as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] if score @s collection_slot1 matches 10 run scoreboard players set #swap_blocked item_before 3
execute as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] if score @s collection_slot2 matches 10 run scoreboard players set #swap_blocked item_before 3
execute as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] if score @s collection_slot3 matches 10 run scoreboard players set #swap_blocked item_before 3
execute as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] if score @s collection_slot4 matches 10 run scoreboard players set #swap_blocked item_before 3
execute as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] if score @s collection_slot5 matches 10 run scoreboard players set #swap_blocked item_before 3
execute if score #swap_blocked item_before matches 3 run function rfm:item/use/swap/cloak_blocked
execute if score #swap_blocked item_before matches 3 run return 0
execute if score #used_item item_held matches 1 as @a[tag=rfm_participant,tag=rfm_item_user] if score @s fame_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 1 as @a[tag=rfm_participant,tag=rfm_item_target] if score @s fame_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 2 as @a[tag=rfm_participant,tag=rfm_item_user] if score @s economy_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 2 as @a[tag=rfm_participant,tag=rfm_item_target] if score @s economy_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 3 as @a[tag=rfm_participant,tag=rfm_item_user] if score @s welfare_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 3 as @a[tag=rfm_participant,tag=rfm_item_target] if score @s welfare_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 4 as @a[tag=rfm_participant,tag=rfm_item_user] if score @s ecology_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #used_item item_held matches 4 as @a[tag=rfm_participant,tag=rfm_item_target] if score @s ecology_lock matches 1 run scoreboard players set #swap_blocked item_before 1
execute if score #swap_blocked item_before matches 1 run function rfm:item/use/swap/blocked
execute if score #swap_blocked item_before matches 1 run return 0
scoreboard players set @s swap_pending 0

#记录交换前双方数值
execute if score #used_item item_held matches 1 as @a[tag=rfm_participant,tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s fame
execute if score #used_item item_held matches 1 as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s fame
execute if score #used_item item_held matches 2 as @a[tag=rfm_participant,tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s economy
execute if score #used_item item_held matches 2 as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s economy
execute if score #used_item item_held matches 3 as @a[tag=rfm_participant,tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s welfare
execute if score #used_item item_held matches 3 as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s welfare
execute if score #used_item item_held matches 4 as @a[tag=rfm_participant,tag=rfm_item_user,limit=1] run scoreboard players operation @s item_before = @s ecology
execute if score #used_item item_held matches 4 as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] run scoreboard players operation @s item_before = @s ecology

#执行指定属性交换
execute as @a[tag=rfm_participant,tag=rfm_item_user,limit=1] run scoreboard players operation #swap item_before = @s item_before
execute if score #used_item item_held matches 1 as @a[tag=rfm_participant,tag=rfm_item_user,limit=1] run scoreboard players operation @s fame = @a[tag=rfm_participant,tag=rfm_item_target,limit=1] fame
execute if score #used_item item_held matches 1 as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] run scoreboard players operation @s fame = #swap item_before
execute if score #used_item item_held matches 2 as @a[tag=rfm_participant,tag=rfm_item_user,limit=1] run scoreboard players operation @s economy = @a[tag=rfm_participant,tag=rfm_item_target,limit=1] economy
execute if score #used_item item_held matches 2 as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] run scoreboard players operation @s economy = #swap item_before
execute if score #used_item item_held matches 3 as @a[tag=rfm_participant,tag=rfm_item_user,limit=1] run scoreboard players operation @s welfare = @a[tag=rfm_participant,tag=rfm_item_target,limit=1] welfare
execute if score #used_item item_held matches 3 as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] run scoreboard players operation @s welfare = #swap item_before
execute if score #used_item item_held matches 4 as @a[tag=rfm_participant,tag=rfm_item_user,limit=1] run scoreboard players operation @s ecology = @a[tag=rfm_participant,tag=rfm_item_target,limit=1] ecology
execute if score #used_item item_held matches 4 as @a[tag=rfm_participant,tag=rfm_item_target,limit=1] run scoreboard players operation @s ecology = #swap item_before

#计算双方实际变化；使用者可查看完整结果，被换者只收到匿名通知
execute if score #used_item item_held matches 1 as @a[tag=rfm_participant,tag=rfm_item_user] run scoreboard players operation @s item_delta = @s fame
execute if score #used_item item_held matches 1 as @a[tag=rfm_participant,tag=rfm_item_target] run scoreboard players operation @s item_delta = @s fame
execute if score #used_item item_held matches 2 as @a[tag=rfm_participant,tag=rfm_item_user] run scoreboard players operation @s item_delta = @s economy
execute if score #used_item item_held matches 2 as @a[tag=rfm_participant,tag=rfm_item_target] run scoreboard players operation @s item_delta = @s economy
execute if score #used_item item_held matches 3 as @a[tag=rfm_participant,tag=rfm_item_user] run scoreboard players operation @s item_delta = @s welfare
execute if score #used_item item_held matches 3 as @a[tag=rfm_participant,tag=rfm_item_target] run scoreboard players operation @s item_delta = @s welfare
execute if score #used_item item_held matches 4 as @a[tag=rfm_participant,tag=rfm_item_user] run scoreboard players operation @s item_delta = @s ecology
execute if score #used_item item_held matches 4 as @a[tag=rfm_participant,tag=rfm_item_target] run scoreboard players operation @s item_delta = @s ecology
execute as @a[tag=rfm_participant,tag=rfm_item_user] run scoreboard players operation @s item_delta -= @s item_before
execute as @a[tag=rfm_participant,tag=rfm_item_target] run scoreboard players operation @s item_delta -= @s item_before

execute if score #used_item item_held matches 1 run tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_participant,tag=rfm_item_user,limit=1]","color":"white","bold":true},{"translate":"rfm.text.66856a0d65d8","color":"aqua"},{"selector":"@a[tag=rfm_participant,tag=rfm_item_target,limit=1]","color":"white","bold":true},{"translate":"rfm.text.a3370dcc24c8","color":"aqua"}]
execute if score #used_item item_held matches 2 run tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_participant,tag=rfm_item_user,limit=1]","color":"white","bold":true},{"translate":"rfm.text.96450078865e","color":"yellow"},{"selector":"@a[tag=rfm_participant,tag=rfm_item_target,limit=1]","color":"white","bold":true},{"translate":"rfm.text.ad9b73b0a3eb","color":"yellow"}]
execute if score #used_item item_held matches 3 run tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_participant,tag=rfm_item_user,limit=1]","color":"white","bold":true},{"translate":"rfm.text.0c043bd2c8c0","color":"red"},{"selector":"@a[tag=rfm_participant,tag=rfm_item_target,limit=1]","color":"white","bold":true},{"translate":"rfm.text.485eff5ee1e1","color":"red"}]
execute if score #used_item item_held matches 4 run tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_participant,tag=rfm_item_user,limit=1]","color":"white","bold":true},{"translate":"rfm.text.7d3b363c68de","color":"green"},{"selector":"@a[tag=rfm_participant,tag=rfm_item_target,limit=1]","color":"white","bold":true},{"translate":"rfm.text.39c96119beae","color":"green"}]
execute if score #used_item item_held matches 1 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.e7b6a277ba8e","color":"aqua"}
execute if score #used_item item_held matches 2 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.d9905df6a266","color":"yellow"}
execute if score #used_item item_held matches 3 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.bd0d829cde19","color":"red"}
execute if score #used_item item_held matches 4 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.b63034d3ce2f","color":"green"}
execute as @a[tag=rfm_participant,tag=rfm_item_user] run tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"translate":"rfm.text.302448cb41bc","color":"gray"},{"selector":"@s","color":"white"},{"translate":"rfm.text.920f7f3f8f52","color":"gray"},{"score":{"name":"@s","objective":"item_delta"},"color":"yellow","bold":true}]
execute as @a[tag=rfm_participant,tag=rfm_item_target] run tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"translate":"rfm.text.302448cb41bc","color":"gray"},{"selector":"@s","color":"white"},{"translate":"rfm.text.920f7f3f8f52","color":"gray"},{"score":{"name":"@s","objective":"item_delta"},"color":"yellow","bold":true}]

tag @a[tag=rfm_participant] remove rfm_item_user
tag @a[tag=rfm_participant] remove rfm_item_target
