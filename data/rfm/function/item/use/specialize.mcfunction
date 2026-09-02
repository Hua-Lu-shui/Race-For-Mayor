tag @a[tag=rfm_participant] remove rfm_specialize_affected
tag @a[tag=rfm_participant,tag=!rfm_item_user] add rfm_specialize_affected
tag @a[tag=rfm_participant,tag=rfm_specialize_affected,scores={candidate=7}] remove rfm_specialize_affected
execute as @a[tag=rfm_participant,tag=rfm_specialize_affected] if score @s collection_slot1 matches 10 run tag @s remove rfm_specialize_affected
execute as @a[tag=rfm_participant,tag=rfm_specialize_affected] if score @s collection_slot2 matches 10 run tag @s remove rfm_specialize_affected
execute as @a[tag=rfm_participant,tag=rfm_specialize_affected] if score @s collection_slot3 matches 10 run tag @s remove rfm_specialize_affected
execute as @a[tag=rfm_participant,tag=rfm_specialize_affected] if score @s collection_slot4 matches 10 run tag @s remove rfm_specialize_affected
execute as @a[tag=rfm_participant,tag=rfm_specialize_affected] if score @s collection_slot5 matches 10 run tag @s remove rfm_specialize_affected

execute if score #used_item item_held matches 13 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run scoreboard players operation @s item_before = @s fame
execute if score #used_item item_held matches 14 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run scoreboard players operation @s item_before = @s economy
execute if score #used_item item_held matches 15 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run scoreboard players operation @s item_before = @s welfare
execute if score #used_item item_held matches 16 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run scoreboard players operation @s item_before = @s ecology

execute if score #used_item item_held matches 13 run scoreboard players add @a[tag=rfm_participant,tag=rfm_item_user] fame 5
execute if score #used_item item_held matches 13 run scoreboard players remove @a[tag=rfm_participant,tag=rfm_specialize_affected] fame 5
execute if score #used_item item_held matches 14 run scoreboard players add @a[tag=rfm_participant,tag=rfm_item_user] economy 5
execute if score #used_item item_held matches 14 run scoreboard players remove @a[tag=rfm_participant,tag=rfm_specialize_affected] economy 5
execute if score #used_item item_held matches 15 run scoreboard players add @a[tag=rfm_participant,tag=rfm_item_user] welfare 5
execute if score #used_item item_held matches 15 run scoreboard players remove @a[tag=rfm_participant,tag=rfm_specialize_affected] welfare 5
execute if score #used_item item_held matches 16 run scoreboard players add @a[tag=rfm_participant,tag=rfm_item_user] ecology 5
execute if score #used_item item_held matches 16 run scoreboard players remove @a[tag=rfm_participant,tag=rfm_specialize_affected] ecology 5
execute as @a[tag=rfm_participant,tag=rfm_specialize_affected] run function rfm:attribute/minimum

execute as @a[tag=rfm_participant,scores={fame_lock=1}] run scoreboard players operation @s fame = @s fame_locked
execute as @a[tag=rfm_participant,scores={economy_lock=1}] run scoreboard players operation @s economy = @s economy_locked
execute as @a[tag=rfm_participant,scores={welfare_lock=1}] run scoreboard players operation @s welfare = @s welfare_locked
execute as @a[tag=rfm_participant,scores={ecology_lock=1}] run scoreboard players operation @s ecology = @s ecology_locked

execute if score #used_item item_held matches 13 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run scoreboard players operation @s item_delta = @s fame
execute if score #used_item item_held matches 14 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run scoreboard players operation @s item_delta = @s economy
execute if score #used_item item_held matches 15 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run scoreboard players operation @s item_delta = @s welfare
execute if score #used_item item_held matches 16 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run scoreboard players operation @s item_delta = @s ecology
execute as @a[tag=rfm_participant,tag=rfm_specialize_affected] run scoreboard players operation @s item_delta -= @s item_before
execute as @a[tag=rfm_participant,tag=rfm_specialize_affected] run scoreboard players set @s item_before 0
execute as @a[tag=rfm_participant,tag=rfm_specialize_affected] run scoreboard players operation @s item_before -= @s item_delta

execute if score #used_item item_held matches 13 run tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_participant,tag=rfm_item_user,limit=1]","color":"white","bold":true},{"translate":"rfm.text.d2bbb14ac93b","color":"aqua"}]
execute if score #used_item item_held matches 14 run tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_participant,tag=rfm_item_user,limit=1]","color":"white","bold":true},{"translate":"rfm.text.a49ca0185302","color":"yellow"}]
execute if score #used_item item_held matches 15 run tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_participant,tag=rfm_item_user,limit=1]","color":"white","bold":true},{"translate":"rfm.text.bac8179503ac","color":"red"}]
execute if score #used_item item_held matches 16 run tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"selector":"@a[tag=rfm_participant,tag=rfm_item_user,limit=1]","color":"white","bold":true},{"translate":"rfm.text.b1153cbbfff7","color":"green"}]
execute if score #used_item item_held matches 13 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run tellraw @s [{"translate":"rfm.text.ebf5c5ced553","color":"white"},{"translate":"rfm.text.91ce738575d7","color":"#C6A8FF","bold":true},{"translate":"rfm.text.49de2a7da66e","color":"white"},{"translate":"rfm.text.dc04a5799df2","color":"aqua"},{"translate":"rfm.text.7f988929693d","color":"white"},{"score":{"name":"@s","objective":"item_before"},"color":"red","bold":true},{"text":"。","color":"white"}]
execute if score #used_item item_held matches 14 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run tellraw @s [{"translate":"rfm.text.ebf5c5ced553","color":"white"},{"translate":"rfm.text.91ce738575d7","color":"#C6A8FF","bold":true},{"translate":"rfm.text.49de2a7da66e","color":"white"},{"translate":"rfm.text.cd0bf6887da7","color":"yellow"},{"translate":"rfm.text.7f988929693d","color":"white"},{"score":{"name":"@s","objective":"item_before"},"color":"red","bold":true},{"text":"。","color":"white"}]
execute if score #used_item item_held matches 15 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run tellraw @s [{"translate":"rfm.text.ebf5c5ced553","color":"white"},{"translate":"rfm.text.91ce738575d7","color":"#C6A8FF","bold":true},{"translate":"rfm.text.49de2a7da66e","color":"white"},{"translate":"rfm.text.318edbd5be8f","color":"red"},{"translate":"rfm.text.7f988929693d","color":"white"},{"score":{"name":"@s","objective":"item_before"},"color":"red","bold":true},{"text":"。","color":"white"}]
execute if score #used_item item_held matches 16 as @a[tag=rfm_participant,tag=rfm_specialize_affected] run tellraw @s [{"translate":"rfm.text.ebf5c5ced553","color":"white"},{"translate":"rfm.text.91ce738575d7","color":"#C6A8FF","bold":true},{"translate":"rfm.text.49de2a7da66e","color":"white"},{"translate":"rfm.text.014a015ae588","color":"green"},{"translate":"rfm.text.7f988929693d","color":"white"},{"score":{"name":"@s","objective":"item_before"},"color":"red","bold":true},{"text":"。","color":"white"}]
execute as @a[tag=rfm_participant,tag=rfm_specialize_affected] run tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"translate":"rfm.text.302448cb41bc","color":"gray"},{"selector":"@s","color":"white"},{"translate":"rfm.text.920f7f3f8f52","color":"gray"},{"score":{"name":"@s","objective":"item_delta"},"color":"red","bold":true}]
execute as @a[tag=rfm_participant,tag=!rfm_item_user,tag=!rfm_specialize_affected] unless score @s candidate matches 7 if score @s collection_slot1 matches 10 run tellraw @s [{"translate":"rfm.text.55e3e5523e7c","color":"light_purple","bold":true},{"translate":"rfm.text.08785f9f6fca","color":"white"}]
execute as @a[tag=rfm_participant,tag=!rfm_item_user,tag=!rfm_specialize_affected] unless score @s candidate matches 7 if score @s collection_slot2 matches 10 run tellraw @s [{"translate":"rfm.text.55e3e5523e7c","color":"light_purple","bold":true},{"translate":"rfm.text.08785f9f6fca","color":"white"}]
execute as @a[tag=rfm_participant,tag=!rfm_item_user,tag=!rfm_specialize_affected] unless score @s candidate matches 7 if score @s collection_slot3 matches 10 run tellraw @s [{"translate":"rfm.text.55e3e5523e7c","color":"light_purple","bold":true},{"translate":"rfm.text.08785f9f6fca","color":"white"}]
execute as @a[tag=rfm_participant,tag=!rfm_item_user,tag=!rfm_specialize_affected] unless score @s candidate matches 7 if score @s collection_slot4 matches 10 run tellraw @s [{"translate":"rfm.text.55e3e5523e7c","color":"light_purple","bold":true},{"translate":"rfm.text.08785f9f6fca","color":"white"}]
execute as @a[tag=rfm_participant,tag=!rfm_item_user,tag=!rfm_specialize_affected] unless score @s candidate matches 7 if score @s collection_slot5 matches 10 run tellraw @s [{"translate":"rfm.text.55e3e5523e7c","color":"light_purple","bold":true},{"translate":"rfm.text.08785f9f6fca","color":"white"}]
tag @a[tag=rfm_participant] remove rfm_specialize_affected
