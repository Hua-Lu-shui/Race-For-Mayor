#抽取并记录本轮病例，确保一局内不会重复
function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 1 run scoreboard players set @s hospital_used_1 1
execute if score @s hospital_case matches 2 run scoreboard players set @s hospital_used_2 1
execute if score @s hospital_case matches 3 run scoreboard players set @s hospital_used_3 1
execute if score @s hospital_case matches 4 run scoreboard players set @s hospital_used_4 1
execute if score @s hospital_case matches 5 run scoreboard players set @s hospital_used_5 1
execute if score @s hospital_case matches 6 run scoreboard players set @s hospital_used_6 1
execute if score @s hospital_case matches 7 run scoreboard players set @s hospital_used_7 1
execute if score @s hospital_case matches 8 run scoreboard players set @s hospital_used_8 1
execute if score @s hospital_case matches 9 run scoreboard players set @s hospital_used_9 1
execute if score @s hospital_case matches 10 run scoreboard players set @s hospital_used_10 1
execute if score @s hospital_case matches 11 run scoreboard players set @s hospital_used_11 1
execute if score @s hospital_case matches 12 run scoreboard players set @s hospital_used_12 1

#病例1至4为急诊，5至8为优先门诊，9至12为普通门诊
scoreboard players set @s hospital_target 0
execute if score @s hospital_case matches 1..4 run scoreboard players set @s hospital_target 1
execute if score @s hospital_case matches 5..8 run scoreboard players set @s hospital_target 2
execute if score @s hospital_case matches 9..12 run scoreboard players set @s hospital_target 3

#发放可阅读的患者病历；分类答案只存在于计分板，不写在病历中
execute if score @s hospital_case matches 1 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：周先生\\n年龄：58岁\\n\\n主诉：胸口持续压榨样疼痛，伴随冷汗和明显呼吸困难，约10分钟前突然发作。\\n\\n既往有高血压病史。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 2 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：林女士\\n年龄：32岁\\n\\n主诉：进食后全身迅速出现大片红疹，喉咙肿胀，呼吸越来越费力。\\n\\n症状仍在快速加重。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 3 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：赵先生\\n年龄：41岁\\n\\n主诉：工作时前臂被玻璃割伤，伤口持续大量出血，面色苍白并开始意识模糊。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 4 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：陈先生\\n年龄：67岁\\n\\n主诉：在候诊区突然倒地，呼叫没有反应，呼吸微弱。家属称此前没有类似情况。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 5 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：王小朋友\\n年龄：6岁\\n\\n主诉：体温39.5℃，精神较差，持续高热一天。当前能够正常呼吸并回答问题。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 6 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：郑女士\\n年龄：29岁\\n\\n主诉：下楼时摔倒，右脚踝明显肿胀变形，无法站立。意识清醒，无大量出血。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 7 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：孙先生\\n年龄：46岁\\n\\n主诉：右下腹持续剧烈疼痛并伴随呕吐，已持续4小时，行走时疼痛明显加重。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 8 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：何女士\\n年龄：38岁\\n\\n主诉：被坠落物砸到头部，出现头晕和恶心。意识清醒，能够正常交流。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 9 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：刘女士\\n年龄：24岁\\n\\n主诉：轻微流鼻涕和咳嗽两天，无发热，精神状态良好，饮食睡眠正常。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 10 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：吴先生\\n年龄：63岁\\n\\n主诉：高血压长期用药即将用完，今日前来复诊续药。当前没有头晕、胸痛等不适。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 11 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：冯女士\\n年龄：35岁\\n\\n主诉：三天前手掌擦伤，已完成处理，今日按预约前来更换敷料。伤口没有红肿流脓。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 12 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"text":"患者病历","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"text":"患者：郭先生\\n年龄：27岁\\n\\n主诉：身体无明显不适，因入职需要前来咨询体检并开具健康证明。"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1

title @s actionbar [{"text":"已完成 ","color":"white"},{"score":{"name":"@s","objective":"hospital_round"},"color":"yellow"},{"text":" / 8：阅读病历后放进正确窗口","color":"white"}]
