#读取当前候选人的称号并展示称号影响；当前占位值为0
execute as @a[tag=rfm_settling,limit=1] run function rfm:ending/title/apply
execute as @a[tag=rfm_settling,limit=1,scores={title_bonus=0}] run title @a title {"text":"称号加成：0","color":"gray","bold":true}
execute as @a[tag=rfm_settling,limit=1,scores={title_bonus=1..}] run title @a title [{"text":"称号加成：+","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"title_bonus"},"color":"white","bold":true}]
execute as @a[tag=rfm_settling,limit=1,scores={title_bonus=..-1}] run title @a title [{"text":"称号加成：","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"title_bonus"},"color":"white","bold":true}]
schedule function rfm:ending/finalize_player 40t replace
