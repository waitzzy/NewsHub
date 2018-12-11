package com.newshub.service;

import com.newshub.common.ServerResponse;
import com.newshub.pojo.News;

public interface INewsService {

    ServerResponse addNew(News news);

    ServerResponse deleteNew(Integer id);

    ServerResponse changeNew(Integer id, News news);

    ServerResponse getNewsList(int pageNum, int pageSize);

    ServerResponse getTitleList(int pageNum, int pageSize);
}
