#事件02：产业招商周（经济权重+1）
scoreboard players set #event_2 event_used 1
scoreboard players add #weight economy_weight 1
title @a times 10 80 20
title @a title {"text":"产业招商周","color":"yellow","bold":true}
title @a subtitle [{"text":"经济权重 ","color":"gray"},{"text":"+1","color":"yellow","bold":true}]
tellraw @a {"text":"【事件】产业招商周","color":"yellow","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"多家企业来到城市考察投资环境，就业岗位与产业发展成为市民讨论的焦点。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"经济权重提高1点；当前经济权重为 ","color":"white"},{"score":{"name":"#weight","objective":"economy_weight"},"color":"yellow","bold":true},{"text":"。","color":"white"}]
