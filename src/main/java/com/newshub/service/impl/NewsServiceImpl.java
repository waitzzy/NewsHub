package com.newshub.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.newshub.common.ServerResponse;
import com.newshub.dao.NewsMapper;
import com.newshub.pojo.News;
import com.newshub.service.INewsService;
import com.newshub.vo.NewsTitleVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service("iNewService")
public class NewsServiceImpl implements INewsService {

    private Logger logger = LoggerFactory.getLogger(NewsServiceImpl.class);

    @Autowired
    private NewsMapper newsMapper;

    public ServerResponse addNew(News news){
        int resultCount = newsMapper.checkByTitle(news.getNewstitle());
        if(resultCount > 0){
            return ServerResponse.createByErrorMessage("用户名已存在");
        }

        resultCount = newsMapper.insert(news);
        if(resultCount == 0){
            return ServerResponse.createByErrorMessage("添加失败");
        }
        return ServerResponse.createBySuccessMessage("添加成功");
    }

    public ServerResponse deleteNew(Integer id){
        int resultCount = newsMapper.deleteByPrimaryKey(id);
        if(resultCount == 0){
            return ServerResponse.createByErrorMessage("删除失败");
        }
        return ServerResponse.createBySuccessMessage("删除成功");
    }

    public ServerResponse changeNew(Integer id, News news){
        news.setNewsid(id);
        int resultCount = newsMapper.updateByPrimaryKeyWithBLOBs(news);
        if (resultCount == 0){
            return ServerResponse.createByErrorMessage("更新失败");
        }
        return ServerResponse.createBySuccessMessage("更新成功");
    }

    public ServerResponse getNewsList(int pageNum, int pageSize){
        PageHelper.startPage(pageNum, pageSize);
        List<News> newsList = newsMapper.selectList();
        PageInfo pageInfo = new PageInfo(newsList);
        return ServerResponse.createBySuccess(pageInfo);
    }

    public ServerResponse getTitleList(int pageNum, int pageSize){
        PageHelper.startPage(pageNum, pageSize);
        List<NewsTitleVo> titleList = newsMapper.selectTitleList();
        PageInfo pageInfo = new PageInfo(titleList);
        return ServerResponse.createBySuccess(pageInfo);
    }
}
