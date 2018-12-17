package com.newshub.service;

import com.newshub.common.ServerResponse;
import com.newshub.pojo.User;

public interface IUserService {

    ServerResponse<User> login(String username, String password);

    ServerResponse<String> register(User user);

    ServerResponse checkAdminType(User user);

    ServerResponse addUser(User user);

    ServerResponse deleteUser(Integer id);

    ServerResponse changeUser(Integer id, User user);

    ServerResponse getUserList(int pageNum, int pageSize);

    ServerResponse changeInfor(Integer id, String userName, String passWord);
}
