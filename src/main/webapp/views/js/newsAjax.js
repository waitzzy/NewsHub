function RecommendNews(e){
    var URL = '../../news/get_recommend_title.do';
    //alert(URL);
    $.ajax({
            url: URL,
            type: 'POST',
            dataType : 'json',
            data:{},
            async: false,
            success:function (data) {
                if(data.status == 0 ){
                    document.getElementById("news_title_list").innerHTML='';
                    var html ="";
                    for (var i = 0; i < data.data.pageSize; i++)
                    {
                        html="                    <li>\n" +
                            "                        <div class=\"cosB\">\n" +
                            "                            1天前\n" +
                            "                        </div>\n" +
                            "                        <div class=\"cosA\">\n" +
                            "                                <span class=\"cosIco label-warning\">\n" +
                            "                        <i class=\"am-icon-plus\"></i>\n" +
                            "                      </span>\n" +
                            "\n" +
                            "                            <span onclick=\"viewDetail(this)\" id="+data.data.list[i].newsid+"> "+
                            data.data.list[i].newstitle+"</span>\n" +
                            "                        </div>\n" +
                            "\n" +
                            "                    </li>";
                        alert(html);
                        $("#news_title_list").append(html);
                    }

                }else if (data.status == 1)
                {
                    alert(data.toString()) ;
                }
            },
            error:function (XMLHttpRequest, textStatus, errorThrown) {
                alert(XMLHttpRequest.status);
                alert(XMLHttpRequest.readyState);
                alert(textStatus);
            }
        }
    )

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
    alert(id);

    var URL = '../../news/get_title_list.do'+'?'+'label='+id.toString();
    //alert(URL);
    $.ajax({
            url: URL,
            type: 'POST',
            dataType : 'json',
            data:{},
            async: false,
            success:function (data) {
                if(data.status == 0 ){
                    document.getElementById("news_title_list").innerHTML='';
                    var html ="";
                    for (var i = 0; i < data.data.pageSize; i++)
                    {
                        html="                    <li>\n" +
                            "                        <div class=\"cosB\">\n" +
                            "                            1天前\n" +
                            "                        </div>\n" +
                            "                        <div class=\"cosA\">\n" +
                            "                                <span class=\"cosIco label-warning\">\n" +
                            "                        <i class=\"am-icon-plus\"></i>\n" +
                            "                      </span>\n" +
                            "\n" +
                            "                            <span onclick=\"viewDetail(this)\" id="+data.data.list[i].newsid+"> "+
                            data.data.list[i].newstitle+"</span>\n" +
                            "                        </div>\n" +
                            "\n" +
                            "                    </li>";
                        alert(html);
                        $("#news_title_list").append(html);
                    }

                }else if (data.status == 1)
                {
                    alert(data.toString()) ;
                }
            },
            error:function (XMLHttpRequest, textStatus, errorThrown) {
                alert(XMLHttpRequest.status);
                alert(XMLHttpRequest.readyState);
                alert(textStatus);
            }
        }
    )

}

function viewDetail(obj){
    alert(obj.id);
    var id = obj.id;
    //var s = document.getElementById("news");
    location.href="newsDetail.jsp"+"?"+"newsId="+id;
}