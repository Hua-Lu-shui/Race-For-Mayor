#把唐雨的求职登记表交给玩家
give @s minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.de3110594ef6","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.4c339e3ae7fb","color":"white","italic":false}','{"translate":"rfm.text.2a2df0dc89c3","color":"gray","italic":false}'],minecraft:custom_data={rfm_resume:1,resume_id:5}] 1
kill @e[type=minecraft:item_display,tag=rfm_employment_model_5]
kill @e[type=minecraft:interaction,tag=rfm_employment_resume_5]
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
