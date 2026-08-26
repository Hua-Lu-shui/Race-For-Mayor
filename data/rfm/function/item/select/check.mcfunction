#确认当前告示牌仍可选择，并记录玩家持有的令牌编号
#每名玩家整局只能领取一次藏品扩容；拦截后保留当前选择资格
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=23}] if score @s stat_use_23 matches 1 run function rfm:item/select/expansion_blocked
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=23}] if score @s stat_use_24 matches 1 run function rfm:item/select/expansion_blocked
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=24}] if score @s stat_use_23 matches 1 run function rfm:item/select/expansion_blocked
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=24}] if score @s stat_use_24 matches 1 run function rfm:item/select/expansion_blocked
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=1}] if score #item_1 item_available matches 1 run scoreboard players set @s item_held 1
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=2}] if score #item_2 item_available matches 1 run scoreboard players set @s item_held 2
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=3}] if score #item_3 item_available matches 1 run scoreboard players set @s item_held 3
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=4}] if score #item_4 item_available matches 1 run scoreboard players set @s item_held 4
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=5}] if score #item_5 item_available matches 1 run scoreboard players set @s item_held 5
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=6}] if score #item_6 item_available matches 1 run scoreboard players set @s item_held 6
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=7}] if score #item_7 item_available matches 1 run scoreboard players set @s item_held 7
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=8}] if score #item_8 item_available matches 1 run scoreboard players set @s item_held 8
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=9}] if score #item_9 item_available matches 1 run scoreboard players set @s item_held 9
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=10}] if score #item_10 item_available matches 1 run scoreboard players set @s item_held 10
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=11}] if score #item_11 item_available matches 1 run scoreboard players set @s item_held 11
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=12}] if score #item_12 item_available matches 1 run scoreboard players set @s item_held 12
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=13}] if score #item_13 item_available matches 1 run scoreboard players set @s item_held 13
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=14}] if score #item_14 item_available matches 1 run scoreboard players set @s item_held 14
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=15}] if score #item_15 item_available matches 1 run scoreboard players set @s item_held 15
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=16}] if score #item_16 item_available matches 1 run scoreboard players set @s item_held 16
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=17}] if score #item_17 item_available matches 1 run scoreboard players set @s item_held 17
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=18}] if score #item_18 item_available matches 1 run scoreboard players set @s item_held 18
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=19}] if score #item_19 item_available matches 1 run scoreboard players set @s item_held 19
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=20}] if score #item_20 item_available matches 1 run scoreboard players set @s item_held 20
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=21}] if score #item_21 item_available matches 1 run scoreboard players set @s item_held 21
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=22}] if score #item_22 item_available matches 1 run scoreboard players set @s item_held 22
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=23}] if score #item_23 item_available matches 1 run scoreboard players set @s item_held 23
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_pick=24}] if score #item_24 item_available matches 1 run scoreboard players set @s item_held 24

#只有成功取得尚未被选择的令牌时才完成本名玩家的选择
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_held=1..24}] run function rfm:item/record_owned
execute as @a[tag=rfm_participant,scores={item_selecting=1,item_held=1..24}] run function rfm:item/select/complete
