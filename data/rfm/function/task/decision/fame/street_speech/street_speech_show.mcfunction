tellraw @s {"text":"【名誉决策】街头演讲","color":"gold","bold":true}
tellraw @s {"text":"竞选团队建议你在人流密集的广场进行即兴演讲。现场气氛可能带来爆发式支持，也可能因为秩序问题被批评。","color":"white"}
tellraw @s [{"text":"[激进] 组织大型街头演讲","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/street_speech/street_speech_a"}}]
tellraw @s [{"text":"[折中] 小规模分区宣讲","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/street_speech/street_speech_b"}}]
tellraw @s [{"text":"[保守] 改为线上直播","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/street_speech/street_speech_c"}}]
