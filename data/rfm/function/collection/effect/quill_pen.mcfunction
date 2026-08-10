#“羽毛笔”：公示前结算；本回合实际被选为行动玩家时不触发
execute if score @s action_player matches 1 run return 0
scoreboard players add @s fame 1
scoreboard players add @s economy 1
scoreboard players add @s welfare 1
scoreboard players add @s ecology 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.7 1.1
tellraw @s [{"text":"【羽毛笔】","color":"green","bold":true},{"text":"你本回合没有成为行动玩家，属性公示前四项属性各 +1。","color":"white"}]
