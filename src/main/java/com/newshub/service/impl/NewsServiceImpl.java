package com.newshub.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.newshub.common.ServerResponse;
import com.newshub.dao.HistoryMapper;
import com.newshub.dao.NewsMapper;
import com.newshub.pojo.History;
import com.newshub.pojo.News;
import com.newshub.service.INewsService;
import com.newshub.vo.NewsTitleVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Service("iNewService")
public class NewsServiceImpl implements INewsService {

    private Logger logger = LoggerFactory.getLogger(NewsServiceImpl.class);

    @Autowired
    private NewsMapper newsMapper;

    @Autowired
    private HistoryMapper historyMapper;

    private NewsTitleVo assembleNewsTitleVo(News news){
        NewsTitleVo newsTitleVo = new NewsTitleVo();
        newsTitleVo.setNewsid(news.getNewsid());
        newsTitleVo.setNewstitle(news.getNewstitle());
        newsTitleVo.setNewslabel(news.getNewslabel());
        return newsTitleVo;
    }

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

    public ServerResponse getNewsList(Integer label, int pageNum, int pageSize){
        PageHelper.startPage(pageNum, pageSize);
        List<News> newsList = newsMapper.selectList(label);
        PageInfo pageInfo = new PageInfo(newsList);
        return ServerResponse.createBySuccess(pageInfo);
    }

    public ServerResponse getTitleList(Integer label, int pageNum, int pageSize){
        List<NewsTitleVo> titleList = Lists.newArrayList();
        PageHelper.startPage(pageNum, pageSize);
        List<News> newsList = newsMapper.selectList(label);
        for(News newsItem : newsList){
            NewsTitleVo newsTitleVo = assembleNewsTitleVo(newsItem);
            titleList.add(newsTitleVo);
        }
        PageInfo pageInfo = new PageInfo(newsList);
        pageInfo.setList(titleList);
        return ServerResponse.createBySuccess(pageInfo);
    }

    public ServerResponse getDetailNews(Integer userId, Integer newsId){
        News news = newsMapper.selectByPrimaryKey(newsId);
        if(news == null){
            return ServerResponse.createByErrorMessage("获取新闻内容失败，参数错误，无该新闻编号");
        }
        History history = new History();
        history.setUserid(userId);
        history.setNewsid(newsId);
        int resultCount = historyMapper.insert(history);
        if(resultCount == 0){
            return ServerResponse.createByErrorMessage("添加浏览记录失败");
        }

        return ServerResponse.createBySuccess(news);
    }

    public ServerResponse getRecommendTitle(Integer userId, int pageNum, int pageSize){
        final List<String> freList = newsMapper.selectFrequency(userId);
        if(freList == null){
            return ServerResponse.createByErrorMessage("还未浏览过任何新闻，暂时无法推荐");
        }
        for (int i = 1; i < 8; i++) {
            if (!freList.contains(String.valueOf(i))) freList.add(String.valueOf(i));
        }
        PageHelper.startPage(pageNum, pageSize);
        List<News> newsList = newsMapper.selectNotViewedList(userId);
        if (newsList == null){
            return ServerResponse.createByErrorMessage("已经浏览过所有新闻，暂无其他新闻推荐");
        }
        PageInfo pageInfo = new PageInfo(newsList);
        Collections.sort(newsList, new Comparator<News>() {
            @Override
            public int compare(News o1, News o2) {
                int addO1 = freList.indexOf(o1.getNewslabel());
                int addO2 = freList.indexOf(o2.getNewslabel());
                return addO1 - addO2;
            }
        });
        List<NewsTitleVo> newsTitleVoList = Lists.newArrayList();
        for (News newsItem : newsList){
            NewsTitleVo newsTitleVo = assembleNewsTitleVo(newsItem);
            newsTitleVoList.add(newsTitleVo);
        }
        pageInfo.setList(newsTitleVoList);

        return ServerResponse.createBySuccess(pageInfo);
    }
}
