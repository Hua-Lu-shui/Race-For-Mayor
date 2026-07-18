#把林晓的求职登记表交给玩家
give @s minecraft:paper[minecraft:custom_name='{"text":"林晓的求职登记表","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"技能：文字录入","color":"white","italic":false}','{"text":"条件：只上白班","color":"gray","italic":false}'],minecraft:custom_data={rfm_resume:1,resume_id:2}] 1
kill @e[type=minecraft:item_display,tag=rfm_employment_model_2]
kill @e[type=minecraft:interaction,tag=rfm_employment_resume_2]
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
