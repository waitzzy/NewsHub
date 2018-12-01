package com.newshub.dao;

import com.newshub.pojo.New;

public interface NewMapper {
    int deleteByPrimaryKey(Integer newsid);

    int insert(New record);

    int insertSelective(New record);

    New selectByPrimaryKey(Integer newsid);

    int updateByPrimaryKeySelective(New record);

    int updateByPrimaryKeyWithBLOBs(New record);

    int updateByPrimaryKey(New record);
}