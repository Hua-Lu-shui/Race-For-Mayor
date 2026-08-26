#“做工精美的手镯”：每进行一次决策任务，所有属性+2
execute unless score @s collection_slot1 matches 13 unless score @s collection_slot2 matches 13 unless score @s collection_slot3 matches 13 unless score @s collection_slot4 matches 13 unless score @s collection_slot5 matches 13 run return 0
scoreboard players add @s fame 2
scoreboard players add @s economy 2
scoreboard players add @s welfare 2
scoreboard players add @s ecology 2
function rfm:attribute/lock/enforce
tellraw @s [{"translate":"rfm.text.5b9140d27689","color":"blue","bold":true},{"translate":"rfm.text.95c0bfb8e531","color":"white"}]
