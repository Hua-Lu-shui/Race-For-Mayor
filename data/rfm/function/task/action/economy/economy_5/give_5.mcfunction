#把唐雨的求职登记表交给玩家
give @s minecraft:paper[minecraft:custom_name='{"text":"唐雨的求职登记表","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"技能：养老护理","color":"white","italic":false}','{"text":"条件：持护理证，接受夜班","color":"gray","italic":false}'],minecraft:custom_data={rfm_resume:1,resume_id:5}] 1
kill @e[type=minecraft:item_display,tag=rfm_employment_model_5]
kill @e[type=minecraft:interaction,tag=rfm_employment_resume_5]
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
