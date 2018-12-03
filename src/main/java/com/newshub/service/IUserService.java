package com.newshub.service;

import com.newshub.common.ServerResponse;
import com.newshub.pojo.User;

public interface IUserService {

    ServerResponse<User> login(String username, String password);
}
