package com.raisei.service.Impl;

import com.raisei.dao.OrderMapper;
import com.raisei.pojo.Order;
import com.raisei.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public List<Integer> selectIdByUserId(int userId) {
        return orderMapper.selectIdByUserId(userId);
    }

    @Override
    public int deleteOrderById(int orderId) {
        return orderMapper.deleteOrderById(orderId);
    }

    @Override
    public int addOrder(Order order) {
        return orderMapper.addOrder(order);
    }

    @Override
    public List<Integer> queryId() {
        return orderMapper.queryId();
    }

    @Override
    public List<Order> queryAll() {
        return orderMapper.queryAll();
    }

}
