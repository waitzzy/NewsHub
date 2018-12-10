package com.newshub.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.newshub.common.ServerResponse;
import com.newshub.dao.CommentMapper;
import com.newshub.pojo.Comment;
import com.newshub.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("iCommentService")
public class CommentServiceImpl implements ICommentService {

    @Autowired
    private CommentMapper commentMapper;

    public ServerResponse addComment(Comment comment){
        int resultCount = commentMapper.insert(comment);
        if(resultCount == 0){
            return ServerResponse.createByErrorMessage("添加失败");
        }
        return ServerResponse.createBySuccessMessage("添加成功");
    }

    public ServerResponse deleteComment(Integer id){
        int resultCount = commentMapper.deleteByPrimaryKey(id);
        if(resultCount == 0){
            return ServerResponse.createByErrorMessage("删除失败");
        }
        return ServerResponse.createBySuccessMessage("删除成功");
    }

    public ServerResponse changeComment(Integer id, Comment comment){
        comment.setCommentid(id);
        int resultCount = commentMapper.updateByPrimaryKeyWithBLOBs(comment);
        if (resultCount == 0){
            return ServerResponse.createByErrorMessage("更新失败");
        }
        return ServerResponse.createBySuccessMessage("更新成功");
    }

    public ServerResponse getCommentList(int pageNum, int pageSize){
        PageHelper.startPage(pageNum, pageSize);
        List<Comment> commentList = commentMapper.selectList();
        PageInfo pageInfo = new PageInfo(commentList);
        return ServerResponse.createBySuccess(pageInfo);
    }
}
