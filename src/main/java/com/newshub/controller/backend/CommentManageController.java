package com.newshub.controller.backend;

import com.newshub.common.Const;
import com.newshub.common.ServerResponse;
import com.newshub.pojo.Comment;
import com.newshub.pojo.User;
import com.newshub.service.ICommentService;
import com.newshub.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/manage/")
public class CommentManageController {

    @Autowired
    private ICommentService iCommentService;

    @Autowired
    private IUserService iUserService;

    @RequestMapping("add_comment.do")
    @ResponseBody
    public ServerResponse addComment(HttpSession session, Comment comment){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(user).isSuccess()){
            return iCommentService.addComment(comment);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }

    @RequestMapping("delete_comment.do")
    @ResponseBody
    public ServerResponse deleteComment(HttpSession session, @RequestParam(value = "id") Integer id){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(user).isSuccess()){
            return iCommentService.deleteComment(id);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }

    @RequestMapping("change_comment.do")
    @ResponseBody
    public ServerResponse changeComment(HttpSession session, @RequestParam(value = "id") Integer id, Comment comment){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(user).isSuccess()){
            return iCommentService.changeComment(id, comment);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }

    @RequestMapping("get_comment.do")
    @ResponseBody
    public ServerResponse getComment(HttpSession session, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize){
        User user = (User) session.getAttribute(Const.CURRENT_USER);
        if(user == null){
            return ServerResponse.createByErrorMessage("用户未登陆，请登录");
        }
        if(iUserService.checkAdminType(user).isSuccess()){
            return iCommentService.getCommentList(pageNum, pageSize);
        }
        return ServerResponse.createByErrorMessage("无权限操作");
    }
}
