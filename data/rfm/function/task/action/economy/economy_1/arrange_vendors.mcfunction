#按summon_vendors中的场景坐标定位20名商人；中文版使用中文姓名，英文版翻译键使用美式姓名
tp @e[type=minecraft:villager,tag=rfm_market_v01,limit=1] 116 -59 27
data merge entity @e[type=minecraft:villager,tag=rfm_market_v01,limit=1] {CustomName:'{"translate":"rfm.text.e7aeffa89711","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v02,limit=1] 119 -59 29
data merge entity @e[type=minecraft:villager,tag=rfm_market_v02,limit=1] {CustomName:'{"translate":"rfm.text.708959308701","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v03,limit=1] 119 -59 32
data merge entity @e[type=minecraft:villager,tag=rfm_market_v03,limit=1] {CustomName:'{"translate":"rfm.text.4e999891ae7c","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v04,limit=1] 119 -59 35
data merge entity @e[type=minecraft:villager,tag=rfm_market_v04,limit=1] {CustomName:'{"translate":"rfm.text.e7d7e1248e9e","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v05,limit=1] 128 -59 35
data merge entity @e[type=minecraft:villager,tag=rfm_market_v05,limit=1] {CustomName:'{"translate":"rfm.text.9a403af35a0a","color":"yellow"}'}

tp @e[type=minecraft:villager,tag=rfm_market_v06,limit=1] 128 -59 32
data merge entity @e[type=minecraft:villager,tag=rfm_market_v06,limit=1] {CustomName:'{"translate":"rfm.text.309ba609677b","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v07,limit=1] 128 -59 28
data merge entity @e[type=minecraft:villager,tag=rfm_market_v07,limit=1] {CustomName:'{"translate":"rfm.text.c02fbfad20a4","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v08,limit=1] 130 -59 27
data merge entity @e[type=minecraft:villager,tag=rfm_market_v08,limit=1] {CustomName:'{"translate":"rfm.text.9eca52acaba0","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v09,limit=1] 128 -59 19
data merge entity @e[type=minecraft:villager,tag=rfm_market_v09,limit=1] {CustomName:'{"translate":"rfm.text.2d9316cc1ddc","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v10,limit=1] 128 -59 16
data merge entity @e[type=minecraft:villager,tag=rfm_market_v10,limit=1] {CustomName:'{"translate":"rfm.text.f0efddece8a3","color":"yellow"}'}

tp @e[type=minecraft:villager,tag=rfm_market_v11,limit=1] 128 -59 13
data merge entity @e[type=minecraft:villager,tag=rfm_market_v11,limit=1] {CustomName:'{"translate":"rfm.text.7e60f3738af4","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v12,limit=1] 128 -59 10
data merge entity @e[type=minecraft:villager,tag=rfm_market_v12,limit=1] {CustomName:'{"translate":"rfm.text.51c95e086ffc","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v13,limit=1] 125 -59 6
data merge entity @e[type=minecraft:villager,tag=rfm_market_v13,limit=1] {CustomName:'{"translate":"rfm.text.5e3a5aaa1842","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v14,limit=1] 121 -59 6
data merge entity @e[type=minecraft:villager,tag=rfm_market_v14,limit=1] {CustomName:'{"translate":"rfm.text.fc9e5416d4ba","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v15,limit=1] 118 -59 10
data merge entity @e[type=minecraft:villager,tag=rfm_market_v15,limit=1] {CustomName:'{"translate":"rfm.text.53230897f5f6","color":"yellow"}'}

tp @e[type=minecraft:villager,tag=rfm_market_v16,limit=1] 118 -59 13
data merge entity @e[type=minecraft:villager,tag=rfm_market_v16,limit=1] {CustomName:'{"translate":"rfm.text.04c38b494877","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v17,limit=1] 118 -59 16
data merge entity @e[type=minecraft:villager,tag=rfm_market_v17,limit=1] {CustomName:'{"translate":"rfm.text.0b0d2f804b75","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v18,limit=1] 117 -59 18
data merge entity @e[type=minecraft:villager,tag=rfm_market_v18,limit=1] {CustomName:'{"translate":"rfm.text.d9f8c8e3428f","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v19,limit=1] 114 -59 18
data merge entity @e[type=minecraft:villager,tag=rfm_market_v19,limit=1] {CustomName:'{"translate":"rfm.text.27d09649cb64","color":"yellow"}'}
tp @e[type=minecraft:villager,tag=rfm_market_v20,limit=1] 113 -59 27
data merge entity @e[type=minecraft:villager,tag=rfm_market_v20,limit=1] {CustomName:'{"translate":"rfm.text.6e03f0137327","color":"yellow"}'}

#重新定位后正对各自摊位
function rfm:task/action/economy/economy_1/face_vendors
