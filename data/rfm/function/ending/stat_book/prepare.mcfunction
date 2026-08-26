#第一页保持原样；之后按办公室顺序为每名实际参赛玩家追加一页
data modify storage rfm:stat_book book set value {pages:[{raw:'[{"translate":"rfm.text.adaa7778a7e1","color":"gold","bold":true},{"translate":"rfm.text.ef7e6794ca9c"},{"translate":"rfm.text.f2dd0741a1c0","color":"aqua"},{"score":{"name":"#weight","objective":"fame_weight"}},{"translate":"rfm.text.ef7e6794ca9c"},{"translate":"rfm.text.847f98d67bbd","color":"yellow"},{"score":{"name":"#weight","objective":"economy_weight"}},{"translate":"rfm.text.ef7e6794ca9c"},{"translate":"rfm.text.d601a1354dc5","color":"red"},{"score":{"name":"#weight","objective":"welfare_weight"}},{"translate":"rfm.text.ef7e6794ca9c"},{"translate":"rfm.text.9d01cc4525c4","color":"green"},{"score":{"name":"#weight","objective":"ecology_weight"}}]'}]}
execute as @a[tag=rfm_participant,scores={room=1},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=2},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=3},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=4},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=5},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=6},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=7},limit=1] run function rfm:ending/stat_book/give
execute as @a[tag=rfm_participant,scores={room=8},limit=1] run function rfm:ending/stat_book/give
