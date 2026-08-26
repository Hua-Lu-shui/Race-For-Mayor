#“诉讼卷宗”：每次正式使用令牌后四项属性各+5；同名双持只结算一次
execute unless score @s collection_slot1 matches 5 unless score @s collection_slot2 matches 5 unless score @s collection_slot3 matches 5 unless score @s collection_slot4 matches 5 unless score @s collection_slot5 matches 5 run return 0
scoreboard players add @s fame 5
scoreboard players add @s economy 5
scoreboard players add @s welfare 5
scoreboard players add @s ecology 5
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.2
tellraw @s [{"translate":"rfm.text.b3b3661b8bc2","color":"green","bold":true},{"translate":"rfm.text.4dc285142501","color":"white"}]
