#执行者是同身份候选人，效果拥有者带rfm_mirror_owner
scoreboard players operation @a[tag=rfm_mirror_owner,limit=1] fame += @a[tag=rfm_mirror_owner,limit=1] collection_delta_fame
scoreboard players operation @a[tag=rfm_mirror_owner,limit=1] economy += @a[tag=rfm_mirror_owner,limit=1] collection_delta_economy
scoreboard players operation @a[tag=rfm_mirror_owner,limit=1] welfare += @a[tag=rfm_mirror_owner,limit=1] collection_delta_welfare
scoreboard players operation @a[tag=rfm_mirror_owner,limit=1] ecology += @a[tag=rfm_mirror_owner,limit=1] collection_delta_ecology
scoreboard players operation @a[tag=rfm_mirror_owner,limit=1] collection_delta_fame += @a[tag=rfm_mirror_owner,limit=1] collection_delta_fame
scoreboard players operation @a[tag=rfm_mirror_owner,limit=1] collection_delta_economy += @a[tag=rfm_mirror_owner,limit=1] collection_delta_economy
scoreboard players operation @a[tag=rfm_mirror_owner,limit=1] collection_delta_welfare += @a[tag=rfm_mirror_owner,limit=1] collection_delta_welfare
scoreboard players operation @a[tag=rfm_mirror_owner,limit=1] collection_delta_ecology += @a[tag=rfm_mirror_owner,limit=1] collection_delta_ecology
tellraw @a[tag=rfm_mirror_owner,limit=1] [{"text":"【魔镜】","color":"light_purple","bold":true},{"text":"同身份候选人使本次决策属性影响翻倍。","color":"white"}]
