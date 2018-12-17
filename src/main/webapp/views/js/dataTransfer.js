function add0(m) {
    return m<10?'0'+m:m;
}
function timeFormat(timestamp){
    //timestamp是整数，否则要parseInt转换,不会出现少个0的情况
    var time = new Date(timestamp);
    var year = time.getFullYear();
    var month = time.getMonth()+1;
    var date = time.getDate();
    var hours = time.getHours();
    var minutes = time.getMinutes();
    var seconds = time.getSeconds();
    return year+'-'+add0(month)+'-'+add0(date)+' '+add0(hours)+':'+add0(minutes)+':'+add0(seconds);
}

function labelToNum(label){
    if(label == "教学"){num = 1;}
    else if (label == "活动"){num = 2;}
    else if (label == "竞赛"){num = 3;}
    else if (label == "科研"){num = 4;}
    else if (label == "学术"){num = 5;}
    else if (label == "国际"){num = 6;}
    else if (label == "就业"){num = 7;}
    else{console.log("标签转换发生错误!");}
    return num;

}

function numToLabel(num) {
    if(num == 1 ){label = "教学";}
    else if(num == 2 ){label = "活动";}
    else if(num == 3 ){label = "竞赛";}
    else if(num == 4 ){label = "科研";}
    else if(num == 5 ){label = "学术";}
    else if(num == 6 ){label = "国际";}
    else if(num == 7 ){label = "就业";}
    else {console.log("标签转换发生错误!");}
    return label;
}