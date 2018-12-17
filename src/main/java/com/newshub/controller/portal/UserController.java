package com.newshub.controller.portal;

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
@RequestMapping("/user/")
public class UserController {

    @Autowired
    private IUserService iUserService;

    @RequestMapping("login.do")
    @ResponseBody
    public ServerResponse<User> login(@RequestParam(value = "username")String username, @RequestParam(value = "password") String password, HttpSession session){
        ServerResponse<User> response = iUserService.login(username, password);
        if (response.isSuccess()) {
            session.setAttribute(Const.CURRENT_USER, response.getData());
        }

        return response;
    }

    @RequestMapping("register.do")
    @ResponseBody
    public ServerResponse<String> register(User user){
        return iUserService.register(user);
    }

    @RequestMapping("change_password.do")
    @ResponseBody
    public ServerResponse changePassword(HttpSession session, @RequestParam(value = "id") Integer id, @RequestParam(value = "username") String username, @RequestParam(value = "password") String password){
        User currentUser = (User) session.getAttribute(Const.CURRENT_USER);
        if(currentUser == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        return iUserService.changeInfor(id, username, password);
    }
}
