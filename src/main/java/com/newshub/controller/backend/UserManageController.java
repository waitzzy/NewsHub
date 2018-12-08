package com.newshub.controller.backend;

import com.newshub.common.Const;
import com.newshub.common.ServerResponse;
import com.newshub.pojo.User;
import com.newshub.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/manage/")
public class UserManageController {

    @Autowired
    private IUserService iUserService;

    @RequestMapping("add_user.do")
    @ResponseBody
    public ServerResponse addUser(HttpSession session, User user){
        User currentUser = (User) session.getAttribute(Const.CURRENT_USER);
        if(currentUser == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(currentUser).isSuccess()){
            return iUserService.addUser(user);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }

    @RequestMapping("delete_user.do")
    @ResponseBody
    public ServerResponse deleteUser(HttpSession session, @RequestParam(value = "id") Integer id){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(user).isSuccess()){
            return iUserService.deleteUser(id);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }

    @RequestMapping("change_user.do")
    @ResponseBody
    public ServerResponse changeUser(HttpSession session, @RequestParam(value = "id") Integer id, User user){
        User currentUser = (User) session.getAttribute(Const.CURRENT_USER);
        if(currentUser == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(currentUser).isSuccess()){
            return iUserService.changeUser(id, user);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }

    @RequestMapping("get_user.do")
    @ResponseBody
    public ServerResponse getUserList(HttpSession session, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(user).isSuccess()){
            return iUserService.getUserList(pageNum, pageSize);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }
}
