package com.raisei.dao;

import com.raisei.pojo.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderMapper {
    List<Integer> selectIdByUserId(int userId);
    int deleteOrderById(int orderId);
    int addOrder(Order order);

    List<Integer> queryId();
    List<Order> queryAll();
}
