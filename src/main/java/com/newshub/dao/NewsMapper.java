package com.newshub.dao;

import com.newshub.pojo.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer newsid);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer newsid);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKeyWithBLOBs(News record);

    int updateByPrimaryKey(News record);

    int checkByTitle(String title);

    List<News> selectList(@Param(value = "label") Integer label);

    List<String> selectFrequency(@Param(value = "userId") Integer userId);

    List<News> selectNotViewedList(@Param(value = "userId") Integer userId);
}