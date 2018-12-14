package com.newshub.controller.backend;

import com.newshub.common.Const;
import com.newshub.common.ServerResponse;
import com.newshub.pojo.News;
import com.newshub.pojo.User;
import com.newshub.service.INewsService;
import com.newshub.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/manage/")
public class NewsManageController {

    @Autowired
    private IUserService iUserService;

    @Autowired
    private INewsService iNewService;

    @RequestMapping("add_news.do")
    @ResponseBody
    public ServerResponse addNew(HttpSession session, News news){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(user).isSuccess()){
            return iNewService.addNew(news);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }

    @RequestMapping("delete_news.do")
    @ResponseBody
    public ServerResponse deleteNew(HttpSession session, @RequestParam(value = "id") Integer id){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(user).isSuccess()){
            return iNewService.deleteNew(id);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }

    @RequestMapping("change_news.do")
    @ResponseBody
    public ServerResponse changeNews(HttpSession session, @RequestParam(value = "id") Integer id, News news){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(user).isSuccess()){
            return iNewService.changeNew(id, news);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }

    @RequestMapping("get_news.do")
    @ResponseBody
    public ServerResponse getNewsList(HttpSession session,@RequestParam(value = "label", defaultValue = "0") Integer label, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(user).isSuccess()){
            return iNewService.getNewsList(label, pageNum, pageSize);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }
}
