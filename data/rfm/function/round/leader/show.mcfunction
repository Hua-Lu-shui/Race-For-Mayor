#依次统计并公示四项属性领先候选人；每项间隔2秒
function rfm:round/leader/fame
schedule function rfm:round/leader/economy 40t replace
schedule function rfm:round/leader/welfare 80t replace
schedule function rfm:round/leader/ecology 120t replace

#四项属性公示完毕后结算公示后效果并进入下一阶段
schedule function rfm:event/after_leaders 160t replace
