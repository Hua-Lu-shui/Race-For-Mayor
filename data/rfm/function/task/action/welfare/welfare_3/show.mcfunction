#任务背景
tellraw @a[tag=rfm_participant] {"text":"学校体育节即将开始，但负责课间操的领操程序突然损坏。学生们已经在操场集合，你需要记住动作顺序并完成现场领操。","color":"white"}

#进入任务场地，再由start函数公布标题和教程
function rfm:task/action/welfare/welfare_3/start
