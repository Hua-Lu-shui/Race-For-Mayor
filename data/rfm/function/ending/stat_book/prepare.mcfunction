#第一页保持原样；之后按办公室顺序为每名实际参赛玩家追加一页
data modify storage rfm:stat_book book set value {pages:[{raw:'[{"text":"结算属性权重\\n","color":"gold","bold":true},{"text":"\\n"},{"text":"名誉 ","color":"aqua"},{"score":{"name":"#weight","objective":"fame_weight"}},{"text":"\\n"},{"text":"经济 ","color":"yellow"},{"score":{"name":"#weight","objective":"economy_weight"}},{"text":"\\n"},{"text":"民生 ","color":"red"},{"score":{"name":"#weight","objective":"welfare_weight"}},{"text":"\\n"},{"text":"生态 ","color":"green"},{"score":{"name":"#weight","objective":"ecology_weight"}}]'}]}
execute as @a[tag=rfm_participant,scores={room=1},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=2},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=3},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=4},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=5},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=6},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=7},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=8},limit=1] run function rfm:ending/stat_book/give
