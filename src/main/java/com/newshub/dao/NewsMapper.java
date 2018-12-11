package com.newshub.dao;

import com.newshub.pojo.News;
import com.newshub.vo.NewsTitleVo;

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

    List<News> selectList();

    List<NewsTitleVo> selectTitleList();
}