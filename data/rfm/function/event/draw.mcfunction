#从18个事件中抽取一个本局尚未出现的事件
function rfm:event/generate

#留出6秒展示事件，之后再发放下一轮准备时钟
schedule function rfm:round/ready/next 120t replace
