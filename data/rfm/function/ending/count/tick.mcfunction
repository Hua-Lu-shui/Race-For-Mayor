#每游戏刻让四项票数各自增加1；较小的项目先停，其他项目继续累加
scoreboard players set #vote_changed settle_value 0
execute if score #shown_fame settle_value < @a[tag=rfm_settling,limit=1] vote_fame run scoreboard players set #vote_changed settle_value 1
execute if score #shown_economy settle_value < @a[tag=rfm_settling,limit=1] vote_economy run scoreboard players set #vote_changed settle_value 1
execute if score #shown_welfare settle_value < @a[tag=rfm_settling,limit=1] vote_welfare run scoreboard players set #vote_changed settle_value 1
execute if score #shown_ecology settle_value < @a[tag=rfm_settling,limit=1] vote_ecology run scoreboard players set #vote_changed settle_value 1

execute if score #shown_fame settle_value < @a[tag=rfm_settling,limit=1] vote_fame run scoreboard players add #shown_fame settle_value 1
execute if score #shown_economy settle_value < @a[tag=rfm_settling,limit=1] vote_economy run scoreboard players add #shown_economy settle_value 1
execute if score #shown_welfare settle_value < @a[tag=rfm_settling,limit=1] vote_welfare run scoreboard players add #shown_welfare settle_value 1
execute if score #shown_ecology settle_value < @a[tag=rfm_settling,limit=1] vote_ecology run scoreboard players add #shown_ecology settle_value 1

#只显示四项属性对应颜色的数字；顺序固定为名誉、经济、民生、生态
title @a title [{"score":{"name":"#shown_fame","objective":"settle_value"},"color":"aqua","bold":true},{"text":"   "},{"score":{"name":"#shown_economy","objective":"settle_value"},"color":"yellow","bold":true},{"text":"   "},{"score":{"name":"#shown_welfare","objective":"settle_value"},"color":"red","bold":true},{"text":"   "},{"score":{"name":"#shown_ecology","objective":"settle_value"},"color":"green","bold":true}]
execute if score #vote_changed settle_value matches 1 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.2 1.6

#只要还有任意一项未到目标就继续；四项全部完成后统一合计
scoreboard players set #vote_counting settle_value 0
execute if score #shown_fame settle_value < @a[tag=rfm_settling,limit=1] vote_fame run scoreboard players set #vote_counting settle_value 1
execute if score #shown_economy settle_value < @a[tag=rfm_settling,limit=1] vote_economy run scoreboard players set #vote_counting settle_value 1
execute if score #shown_welfare settle_value < @a[tag=rfm_settling,limit=1] vote_welfare run scoreboard players set #vote_counting settle_value 1
execute if score #shown_ecology settle_value < @a[tag=rfm_settling,limit=1] vote_ecology run scoreboard players set #vote_counting settle_value 1
execute if score #vote_counting settle_value matches 1 run schedule function rfm:ending/count/tick 1t replace
execute if score #vote_counting settle_value matches 0 run schedule function rfm:ending/combine 20t replace
