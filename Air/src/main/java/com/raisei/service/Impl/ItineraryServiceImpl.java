package com.raisei.service.Impl;

import com.raisei.dao.ItineraryMapper;
import com.raisei.pojo.Itinerary;
import com.raisei.service.ItineraryService;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import java.util.List;

@Service
public class ItineraryServiceImpl implements ItineraryService {

    @Autowired
    private ItineraryMapper itineraryMapper;
    @Autowired
    private DataSourceTransactionManager transactionManager;



    @Override
    public Itinerary selectItineraryById(int itinerary_id) {
        return itineraryMapper.selectItineraryById(itinerary_id);
    }

    @Override
    public List<Itinerary> queryAll() {
        return itineraryMapper.queryAll();
    }

    @Override
    public List<Itinerary> selectByUserId(int userId) {
        return itineraryMapper.selectByUserId(userId);
    }

    @Override
    public int addItinerary(Itinerary itinerary) {
        int i = itineraryMapper.addItinerary(itinerary);
        //1.获取事务定义
        DefaultTransactionDefinition def = new DefaultTransactionDefinition();
        //2.设置事务隔离级别，开启新事务
        def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRES_NEW);
        //3.获得事务状态
        TransactionStatus status = transactionManager.getTransaction(def);
        // 事务提交
        transactionManager.commit(status);
        return i;
    }

    @Override
    public int deleteById(int id) {
        return itineraryMapper.deleteById(id);
    }

}
