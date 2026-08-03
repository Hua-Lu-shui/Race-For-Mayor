#把陈康的求职登记表交给玩家
give @s minecraft:paper[minecraft:custom_name='{"text":"陈康的求职登记表","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"技能：机械维修","color":"white","italic":false}','{"text":"条件：接受夜班","color":"gray","italic":false}'],minecraft:custom_data={rfm_resume:1,resume_id:1}] 1
kill @e[type=minecraft:item_display,tag=rfm_employment_model_1]
kill @e[type=minecraft:interaction,tag=rfm_employment_resume_1]
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
