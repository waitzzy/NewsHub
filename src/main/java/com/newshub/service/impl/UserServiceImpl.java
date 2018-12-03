package com.newshub.service.impl;

import com.newshub.common.ServerResponse;
import com.newshub.dao.UserMapper;
import com.newshub.pojo.User;
import com.newshub.service.IUserService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("iUserService")
public class UserServiceImpl implements IUserService {

    private Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    private UserMapper userMapper;

    public ServerResponse<User> login(String username, String password){
        int resultCount = userMapper.checkUsername(username);
        if(resultCount == 0)return ServerResponse.createByErrorMessage("用户名不存在");

        User user = userMapper.selectLogin(username, password);
        if (user == null) {
            return ServerResponse.createByErrorMessage("密码错误");
        }

        user.setPassword(StringUtils.EMPTY);
        return ServerResponse.createBySuccess(user);
    }
}
