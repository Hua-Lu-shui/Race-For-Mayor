#事件05：全城信任危机（名誉权重+4）
scoreboard players set #event_5 event_used 1
scoreboard players add #weight fame_weight 4
title @a times 10 80 20
title @a title {"text":"全城信任危机","color":"aqua","bold":true}
title @a subtitle [{"text":"名誉权重 ","color":"gray"},{"text":"+4","color":"aqua","bold":true}]
tellraw @a {"text":"【城市事件】全城信任危机","color":"aqua","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"连续出现的失信传闻引发公众质疑，选民迫切希望看到一位值得信赖、敢于负责的市长。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"名誉权重提高4点；当前名誉权重为 ","color":"white"},{"score":{"name":"#weight","objective":"fame_weight"},"color":"aqua","bold":true},{"text":"。","color":"white"}]
