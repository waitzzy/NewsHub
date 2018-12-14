package com.newshub.controller.portal;

import com.newshub.common.Const;
import com.newshub.common.ServerResponse;
import com.newshub.pojo.User;
import com.newshub.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/news/")
public class NewsController {

    @Autowired
    private INewsService iNewsService;

    @RequestMapping("get_title_list.do")
    @ResponseBody
    public ServerResponse getTitleList(HttpSession session, @RequestParam(value = "label", defaultValue = "0") Integer label, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        return iNewsService.getTitleList(label, pageNum, pageSize);
    }

    @RequestMapping("get_recommend_title.do")
    @ResponseBody
    public ServerResponse getRecommendTitle(HttpSession session, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        return iNewsService.getRecommendTitle(user.getUserid(), pageNum, pageSize);
    }

    @RequestMapping("get_detail_news.do")
    @ResponseBody
    public ServerResponse getDetailNews(HttpSession session, @RequestParam(value = "newsId") Integer newsId){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        return iNewsService.getDetailNews(user.getUserid(), newsId);
    }
}
