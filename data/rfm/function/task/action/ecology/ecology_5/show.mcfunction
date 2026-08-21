#任务背景
tellraw @a[tag=rfm_participant] {"text":"城市清洁能源系统即将接入公共电网，但不同设备的供电量需要与实时需求精确匹配。你需要完成能源调度检查，避免供电不足或能源浪费。","color":"white"}

#进入任务场地，再由start函数公布标题和教程
function rfm:task/action/ecology/ecology_5/start
