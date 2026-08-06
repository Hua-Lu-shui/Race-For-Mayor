#“医者仁心”：开局随机藏品固定使用第二槽，并随第一次准备时钟发放
scoreboard players set @s collection_slot1 0
execute store result score @s collection_slot2 run random value 1..6
tellraw @s [{"text":"【医者仁心】","color":"#012696","bold":true},{"text":"你已随机获得一件藏品，将与第一回合准备时钟一同发放至快捷栏第二格。","color":"white"}]
