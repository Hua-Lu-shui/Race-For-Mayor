#识别玩家在自己附近丢出的结算时钟
execute as @a[tag=rfm_participant,scores={settle_ready=0,settle_clock=1..}] at @s if entity @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}] run function rfm:ending/ready/player_ready

#处理完归属后清除地上的结算时钟，并重置丢弃统计
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
scoreboard players set @a[tag=rfm_participant] settle_clock 0

#没有任何在线玩家处于未确认状态时开始黑屏转场
execute if score #session_online game_session = #session_size game_session if entity @a[tag=rfm_participant] unless entity @a[tag=rfm_participant,scores={settle_ready=0}] run function rfm:ending/transition
