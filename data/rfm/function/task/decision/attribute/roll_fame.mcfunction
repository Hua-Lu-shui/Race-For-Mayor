#随机抽取一个名誉决策，并用位图判断该玩家本局是否已经抽到过
scoreboard players add @s dec_used_fame 0
execute store result score @s decision_task run random value 101..120
scoreboard players set @s dec_used_bit 1
execute if score @s decision_task matches 102 run scoreboard players set @s dec_used_bit 2
execute if score @s decision_task matches 103 run scoreboard players set @s dec_used_bit 4
execute if score @s decision_task matches 104 run scoreboard players set @s dec_used_bit 8
execute if score @s decision_task matches 105 run scoreboard players set @s dec_used_bit 16
execute if score @s decision_task matches 106 run scoreboard players set @s dec_used_bit 32
execute if score @s decision_task matches 107 run scoreboard players set @s dec_used_bit 64
execute if score @s decision_task matches 108 run scoreboard players set @s dec_used_bit 128
execute if score @s decision_task matches 109 run scoreboard players set @s dec_used_bit 256
execute if score @s decision_task matches 110 run scoreboard players set @s dec_used_bit 512
execute if score @s decision_task matches 111 run scoreboard players set @s dec_used_bit 1024
execute if score @s decision_task matches 112 run scoreboard players set @s dec_used_bit 2048
execute if score @s decision_task matches 113 run scoreboard players set @s dec_used_bit 4096
execute if score @s decision_task matches 114 run scoreboard players set @s dec_used_bit 8192
execute if score @s decision_task matches 115 run scoreboard players set @s dec_used_bit 16384
execute if score @s decision_task matches 116 run scoreboard players set @s dec_used_bit 32768
execute if score @s decision_task matches 117 run scoreboard players set @s dec_used_bit 65536
execute if score @s decision_task matches 118 run scoreboard players set @s dec_used_bit 131072
execute if score @s decision_task matches 119 run scoreboard players set @s dec_used_bit 262144
execute if score @s decision_task matches 120 run scoreboard players set @s dec_used_bit 524288
scoreboard players operation @s dec_used_check = @s dec_used_fame
scoreboard players operation @s dec_used_check /= @s dec_used_bit
scoreboard players set #two dec_used_bit 2
scoreboard players operation @s dec_used_check %= #two dec_used_bit
execute if score @s dec_used_check matches 1 run return run function rfm:task/decision/attribute/roll_fame
scoreboard players operation @s dec_used_fame += @s dec_used_bit
execute if score @s decision_task matches 101 run function rfm:task/decision/fame/media/media_show
execute if score @s decision_task matches 102 run function rfm:task/decision/fame/debate/debate_show
execute if score @s decision_task matches 103 run function rfm:task/decision/fame/anti_corruption/anti_corruption_show
execute if score @s decision_task matches 104 run function rfm:task/decision/fame/charity/charity_show
execute if score @s decision_task matches 105 run function rfm:task/decision/fame/rumor/rumor_show
execute if score @s decision_task matches 106 run function rfm:task/decision/fame/volunteer/volunteer_show
execute if score @s decision_task matches 107 run function rfm:task/decision/fame/apology/apology_show
execute if score @s decision_task matches 108 run function rfm:task/decision/fame/endorsement/endorsement_show
execute if score @s decision_task matches 109 run function rfm:task/decision/fame/open_day/open_day_show
execute if score @s decision_task matches 110 run function rfm:task/decision/fame/debunk/debunk_show
execute if score @s decision_task matches 111 run function rfm:task/decision/fame/youth_forum/youth_forum_show
execute if score @s decision_task matches 112 run function rfm:task/decision/fame/press_leak/press_leak_show
execute if score @s decision_task matches 113 run function rfm:task/decision/fame/street_speech/street_speech_show
execute if score @s decision_task matches 114 run function rfm:task/decision/fame/fact_check/fact_check_show
execute if score @s decision_task matches 115 run function rfm:task/decision/fame/heritage_event/heritage_event_show
execute if score @s decision_task matches 116 run function rfm:task/decision/fame/city_mascot/city_mascot_show
execute if score @s decision_task matches 117 run function rfm:task/decision/fame/civic_award/civic_award_show
execute if score @s decision_task matches 118 run function rfm:task/decision/fame/official_ai/official_ai_show
execute if score @s decision_task matches 119 run function rfm:task/decision/fame/public_art/public_art_show
execute if score @s decision_task matches 120 run function rfm:task/decision/fame/honor_revocation/honor_revocation_show
#学者额外获知三个选项的精确属性影响
function rfm:ability/scholar/preview
