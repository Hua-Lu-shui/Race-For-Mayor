#从28个事件中抽取一个本局尚未出现的事件
function rfm:event/generate

#留出6秒展示事件，之后开始本轮属性公示
schedule function rfm:round/leader/show 120t replace
