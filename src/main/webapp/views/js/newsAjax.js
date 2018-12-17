function RecommendNews(){
    location.href = "recommend.jsp";
}



function displayNews(e){
    var id = $(e).text();
    if(id == "教学"){ id=1;}
    else if(id == "活动"){ id =2;}
    else if(id == "竞赛"){ id =3;}
    else if(id == "科研"){ id =4;}
    else if(id == "学术"){ id =5;}
    else if(id == "国际"){ id =6;}
    else if(id == "就业"){ id =7;}
    //alert(id);
    location.href = "classify.jsp"+"?"+"label="+id;
}

function viewDetail(obj){
    //alert(obj.id);
    var id = obj.id;
    //var s = document.getElementById("news");
    location.href="newsDetail.jsp"+"?"+"newsId="+id;
}