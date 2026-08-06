#“诉讼卷宗”：每次正式使用令牌后四项属性各+5；同名双持只结算一次
execute unless score @s collection_slot1 matches 5 unless score @s collection_slot2 matches 5 run return 0
scoreboard players add @s fame 5
scoreboard players add @s economy 5
scoreboard players add @s welfare 5
scoreboard players add @s ecology 5
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.2
tellraw @s [{"text":"【诉讼卷宗】","color":"light_purple","bold":true},{"text":"你使用了一枚令牌，所有属性 +5。","color":"white"}]
