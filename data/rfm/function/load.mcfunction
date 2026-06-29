#创建候选人类型
scoreboard objectives add candidate dummy

#将候选人计分板显示在列表中
scoreboard objectives setdisplay list candidate

#告示牌点击事件
data modify block 3 -62 6 front_text.messages[1] set value '{"text":"明星","clickEvent":{"action":"run_command","value":"/function rfm:candidate/star"}}'

data modify block 3 -62 8 front_text.messages[1] set value '{"text":"企业家","clickEvent":{"action":"run_command","value":"/function rfm:candidate/business"}}'

data modify block 3 -62 10 front_text.messages[1] set value '{"text":"社区领袖","clickEvent":{"action":"run_command","value":"/function rfm:candidate/community"}}'

data modify block 3 -62 12 front_text.messages[1] set value '{"text":"学者","clickEvent":{"action":"run_command","value":"/function rfm:candidate/scholar"}}'

data modify block 3 -62 14 front_text.messages[1] set value '{"text":"公务员","clickEvent":{"action":"run_command","value":"/function rfm:candidate/official"}}'


say "加载完毕"