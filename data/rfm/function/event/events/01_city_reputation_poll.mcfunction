#事件01：城市口碑调查（名誉权重+1）
scoreboard players set #event_1 event_used 1
scoreboard players add #weight fame_weight 1
title @a times 10 80 20
title @a title {"text":"城市口碑调查","color":"aqua","bold":true}
title @a subtitle [{"text":"名誉权重 ","color":"gray"},{"text":"+1","color":"aqua","bold":true}]
tellraw @a {"text":"【城市事件】城市口碑调查","color":"aqua","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"市政研究机构公布新一期城市口碑调查，公众开始更加重视候选人的信誉、形象与承诺兑现情况。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"名誉权重提高1点；当前名誉权重为 ","color":"white"},{"score":{"name":"#weight","objective":"fame_weight"},"color":"aqua","bold":true},{"text":"。","color":"white"}]
