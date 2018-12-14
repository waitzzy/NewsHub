package com.newshub.service;

import com.newshub.common.ServerResponse;
import com.newshub.pojo.News;

public interface INewsService {

    ServerResponse addNew(News news);

    ServerResponse deleteNew(Integer id);

    ServerResponse changeNew(Integer id, News news);

    ServerResponse getNewsList(Integer label, int pageNum, int pageSize);

    ServerResponse getTitleList(Integer label, int pageNum, int pageSize);

    ServerResponse getDetailNews(Integer userId, Integer id);

    ServerResponse getRecommendTitle(Integer userId, int pageNum, int pageSize);
}
