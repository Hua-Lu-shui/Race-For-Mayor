#事件04：绿色城市倡议（生态权重+1）
scoreboard players set #event_4 event_used 1
scoreboard players add #weight ecology_weight 1
title @a times 10 80 20
title @a title {"text":"绿色城市倡议","color":"green","bold":true}
title @a subtitle [{"text":"生态权重 ","color":"gray"},{"text":"+1","color":"green","bold":true}]
tellraw @a {"text":"【城市事件】绿色城市倡议","color":"green","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"市民团体发起绿色城市倡议，空气质量、公共绿地与清洁能源进入竞选议程。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"生态权重提高1点；当前生态权重为 ","color":"white"},{"score":{"name":"#weight","objective":"ecology_weight"},"color":"green","bold":true},{"text":"。","color":"white"}]
