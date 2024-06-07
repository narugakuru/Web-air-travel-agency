package com.raisei.service;

import com.raisei.pojo.Order;
import org.springframework.stereotype.Service;

import java.util.List;


public interface OrderService {
    List<Integer> selectIdByUserId(int userId);
    int deleteOrderById(int orderId);
    int addOrder(Order order);
    List<Integer> queryId();
    List<Order> queryAll();
}
