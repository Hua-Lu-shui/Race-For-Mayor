#返回办公室后先停留2秒，再依次展示四项属性的领先候选人；每项间隔2秒
schedule function rfm:round/leader/fame 40t replace
schedule function rfm:round/leader/economy 80t replace
schedule function rfm:round/leader/welfare 120t replace
schedule function rfm:round/leader/ecology 160t replace
#四项领先者公布完毕后，再判断本回合是否抽取事件
schedule function rfm:event/after_leaders 200t replace
