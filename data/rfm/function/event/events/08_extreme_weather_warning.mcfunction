#事件08：极端气候预警（生态权重+4）
scoreboard players set #event_8 event_used 1
scoreboard players add #weight ecology_weight 4
title @a times 10 80 20
title @a title {"text":"极端气候预警","color":"green","bold":true}
title @a subtitle [{"text":"生态权重 ","color":"gray"},{"text":"+4","color":"green","bold":true}]
tellraw @a {"text":"【城市事件】极端气候预警","color":"green","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"持续高温与强降雨预警同时拉响，城市的生态韧性、排水能力与能源转型受到严峻考验。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"生态权重提高4点；当前生态权重为 ","color":"white"},{"score":{"name":"#weight","objective":"ecology_weight"},"color":"green","bold":true},{"text":"。","color":"white"}]
