#按summon_vendors中的场景坐标定位20名商人；中文版使用中文姓名，英文版翻译键使用美式姓名
tp @e[type=minecraft:villager,tag=rfm_market_v01,limit=1] 116 -59 27
data merge entity @e[type=minecraft:villager,tag=rfm_market_v01,limit=1] {CustomName:'{"text":"王建国","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v02,limit=1] 119 -59 29
data merge entity @e[type=minecraft:villager,tag=rfm_market_v02,limit=1] {CustomName:'{"text":"李秀兰","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v03,limit=1] 119 -59 32
data merge entity @e[type=minecraft:villager,tag=rfm_market_v03,limit=1] {CustomName:'{"text":"张伟","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v04,limit=1] 119 -59 35
data merge entity @e[type=minecraft:villager,tag=rfm_market_v04,limit=1] {CustomName:'{"text":"刘芳","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v05,limit=1] 128 -59 35
data merge entity @e[type=minecraft:villager,tag=rfm_market_v05,limit=1] {CustomName:'{"text":"陈浩","color":"yellow"}'}

tp @e[type=minecraft:villager,tag=rfm_market_v06,limit=1] 128 -59 32
data merge entity @e[type=minecraft:villager,tag=rfm_market_v06,limit=1] {CustomName:'{"text":"杨慧","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v07,limit=1] 128 -59 28
data merge entity @e[type=minecraft:villager,tag=rfm_market_v07,limit=1] {CustomName:'{"text":"赵磊","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v08,limit=1] 130 -59 27
data merge entity @e[type=minecraft:villager,tag=rfm_market_v08,limit=1] {CustomName:'{"text":"周敏","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v09,limit=1] 128 -59 19
data merge entity @e[type=minecraft:villager,tag=rfm_market_v09,limit=1] {CustomName:'{"text":"吴杰","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v10,limit=1] 128 -59 16
data merge entity @e[type=minecraft:villager,tag=rfm_market_v10,limit=1] {CustomName:'{"text":"徐婷婷","color":"yellow"}'}

tp @e[type=minecraft:villager,tag=rfm_market_v11,limit=1] 128 -59 13
data merge entity @e[type=minecraft:villager,tag=rfm_market_v11,limit=1] {CustomName:'{"text":"孙宇","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v12,limit=1] 128 -59 10
data merge entity @e[type=minecraft:villager,tag=rfm_market_v12,limit=1] {CustomName:'{"text":"胡晓梅","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v13,limit=1] 125 -59 6
data merge entity @e[type=minecraft:villager,tag=rfm_market_v13,limit=1] {CustomName:'{"text":"朱明","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v14,limit=1] 121 -59 6
data merge entity @e[type=minecraft:villager,tag=rfm_market_v14,limit=1] {CustomName:'{"text":"高雪","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v15,limit=1] 118 -59 10
data merge entity @e[type=minecraft:villager,tag=rfm_market_v15,limit=1] {CustomName:'{"text":"林涛","color":"yellow"}'}

tp @e[type=minecraft:villager,tag=rfm_market_v16,limit=1] 118 -59 13
data merge entity @e[type=minecraft:villager,tag=rfm_market_v16,limit=1] {CustomName:'{"text":"何琳","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v17,limit=1] 118 -59 16
data merge entity @e[type=minecraft:villager,tag=rfm_market_v17,limit=1] {CustomName:'{"text":"郭鹏","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v18,limit=1] 117 -59 18
data merge entity @e[type=minecraft:villager,tag=rfm_market_v18,limit=1] {CustomName:'{"text":"马丽","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v19,limit=1] 114 -59 18
data merge entity @e[type=minecraft:villager,tag=rfm_market_v19,limit=1] {CustomName:'{"text":"罗峰","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v20,limit=1] 113 -59 27
data merge entity @e[type=minecraft:villager,tag=rfm_market_v20,limit=1] {CustomName:'{"text":"梁欣","color":"yellow"}'}

#重新定位后正对各自摊位
function rfm:task/action/economy/economy_1/face_vendors
