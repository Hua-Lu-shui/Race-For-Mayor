#任务背景
tellraw @a[tag=rfm_participant] {"text":"工业园区附近连续收到居民投诉：部分排放口疑似在夜间冒出黑烟。市民要求候选人尽快核查，确认污染来源并公开处理态度。","color":"white"}

#先进入任务场地，再由start函数公布教程并开始准备倒计时
function rfm:task/action/ecology/ecology_1/start
