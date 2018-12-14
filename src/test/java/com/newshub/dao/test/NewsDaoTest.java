package com.newshub.dao.test;

import com.newshub.dao.NewsMapper;
import com.newshub.pojo.News;
import com.newshub.test.TestBase;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class NewsDaoTest extends TestBase {

    @Autowired
    private NewsMapper newsMapper;

    @Test
    public void selectFrequency(){
        List<String> list = newsMapper.selectFrequency(1);
        System.out.println(list.toString());
    }

    @Test
    public void getNotViewedList(){
        List<News> list = newsMapper.selectNotViewedList(1);
        for(News newsItem : list){
            System.out.println(newsItem.getNewsid());
        }
    }
}
