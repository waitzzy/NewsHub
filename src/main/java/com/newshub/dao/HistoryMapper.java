package com.newshub.dao;

import com.newshub.pojo.History;

public interface HistoryMapper {
    int deleteByPrimaryKey(Integer historyid);

    int insert(History record);

    int insertSelective(History record);

    History selectByPrimaryKey(Integer historyid);

    int updateByPrimaryKeySelective(History record);

    int updateByPrimaryKey(History record);
}