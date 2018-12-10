package com.newshub.service;

import com.newshub.common.ServerResponse;
import com.newshub.pojo.Comment;

public interface ICommentService {

    ServerResponse addComment(Comment comment);

    ServerResponse deleteComment(Integer id);

    ServerResponse changeComment(Integer id, Comment comment);

    ServerResponse getCommentList(int pageNum, int pageSize);
}
