#“羽毛笔”：回合结束、公示前结算；上一回合实际被选为行动玩家时不触发
#第1回合及缺少上一回合记录时也不触发
execute unless score @s previous_action_player matches 0 run return 0
scoreboard players add @s fame 1
scoreboard players add @s economy 1
scoreboard players add @s welfare 1
scoreboard players add @s ecology 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.7 1.1
tellraw @s [{"translate":"rfm.text.cb0e29c5748e","color":"green","bold":true},{"translate":"rfm.text.696371b806fa","color":"white"}]
