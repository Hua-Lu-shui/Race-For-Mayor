#事件07：公共卫生警报（民生权重+4）
scoreboard players set #event_7 event_used 1
scoreboard players add #weight welfare_weight 4
title @a times 10 80 20
title @a title {"text":"公共卫生警报","color":"red","bold":true}
title @a subtitle [{"text":"民生权重 ","color":"gray"},{"text":"+4","color":"red","bold":true}]
tellraw @a {"text":"【城市事件】公共卫生警报","color":"red","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"季节性疾病集中出现，医院接诊压力上升，市民对医疗保障和基层服务的关注迅速升温。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"民生权重提高4点；当前民生权重为 ","color":"white"},{"score":{"name":"#weight","objective":"welfare_weight"},"color":"red","bold":true},{"text":"。","color":"white"}]
