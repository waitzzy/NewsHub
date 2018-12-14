package com.newshub.service.test;

import com.google.common.collect.Lists;
import com.newshub.dao.NewsMapper;
import com.newshub.pojo.News;
import com.newshub.test.TestBase;
import com.newshub.vo.NewsTitleVo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class NewsServiceTest extends TestBase {

    @Autowired
    private NewsMapper newsMapper;

    @Test
    public void getRecommendTitle() {
        final List<String> freList = newsMapper.selectFrequency(1);
        for (int i = 1; i < 8; i++) {
            if (!freList.contains(String.valueOf(i))) freList.add(String.valueOf(i));
        }
//        System.out.println(freList.toString());
//        System.out.println(freList.toString());
        List<News> newsList = newsMapper.selectNotViewedList(1);
        Collections.sort(newsList, new Comparator<News>() {
            @Override
            public int compare(News o1, News o2) {
                int addO1 = freList.indexOf(o1.getNewslabel());
                int addO2 = freList.indexOf(o2.getNewslabel());
//                System.out.println(o1.getNewslabel() + "  " + o2.getNewslabel());
//                System.out.println("addO1: " + addO1 + "   addO2: " + addO2);
                return addO1 - addO2;
            }
        });
        for (News newsItem : newsList){
            System.out.println(newsItem.getNewslabel());
        }
    }
}
