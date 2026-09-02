scoreboard players add @s emission_round 1
execute store result score @s emission_target run random value 1..9
execute if score @s emission_target matches 1 run playsound minecraft:block.fire.extinguish master @a[tag=rfm_participant] 123 -58 72 0.8 0.6
execute if score @s emission_target matches 2 run playsound minecraft:block.fire.extinguish master @a[tag=rfm_participant] 120 -58 72 0.8 0.6
execute if score @s emission_target matches 3 run playsound minecraft:block.fire.extinguish master @a[tag=rfm_participant] 117 -58 72 0.8 0.6
execute if score @s emission_target matches 4 run playsound minecraft:block.fire.extinguish master @a[tag=rfm_participant] 123 -58 75 0.8 0.6
execute if score @s emission_target matches 5 run playsound minecraft:block.fire.extinguish master @a[tag=rfm_participant] 120 -58 75 0.8 0.6
execute if score @s emission_target matches 6 run playsound minecraft:block.fire.extinguish master @a[tag=rfm_participant] 117 -58 75 0.8 0.6
execute if score @s emission_target matches 7 run playsound minecraft:block.fire.extinguish master @a[tag=rfm_participant] 123 -58 78 0.8 0.6
execute if score @s emission_target matches 8 run playsound minecraft:block.fire.extinguish master @a[tag=rfm_participant] 120 -58 78 0.8 0.6
execute if score @s emission_target matches 9 run playsound minecraft:block.fire.extinguish master @a[tag=rfm_participant] 117 -58 78 0.8 0.6
scoreboard players set @s emission_answer 0
scoreboard players set @s emission_time 40
scoreboard players set @s emission_delay 0
scoreboard players set @s emission_state 1

bossbar set rfm:emission_time players @a[tag=rfm_participant]
bossbar set rfm:emission_time max 40
bossbar set rfm:emission_time value 40
bossbar set rfm:emission_time name [{"translate":"rfm.text.f495347d6acf","color":"white"},{"score":{"name":"@s","objective":"emission_round"},"color":"gold"},{"translate":"rfm.text.4e0c5c0ee9af","color":"green"}]
bossbar set rfm:emission_time visible true

function rfm:task/action/ecology/ecology_1/give_items
