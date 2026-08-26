#“名贵的巧克力”：最终结算时所有属性+10
execute unless score @s collection_slot1 matches 39 unless score @s collection_slot2 matches 39 unless score @s collection_slot3 matches 39 unless score @s collection_slot4 matches 39 unless score @s collection_slot5 matches 39 run return 0
scoreboard players add @s fame 10
scoreboard players add @s economy 10
scoreboard players add @s welfare 10
scoreboard players add @s ecology 10
tellraw @s [{"translate":"rfm.text.3c33158852ba","color":"blue","bold":true},{"translate":"rfm.text.004c62cdeed3","color":"white"}]
