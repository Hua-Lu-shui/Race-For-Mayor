#任务背景
tellraw @a {"text":"社区医院近期患者集中到院，候诊区秩序混乱，一些真正紧急的患者反而无法及时就诊。你需要查看患者病历，判断病情紧急程度，并把他们分流到正确的就诊窗口。","color":"white"}

#进入任务场地，再由start函数公布标题和教程
function rfm:task/action/welfare/welfare_1/start
