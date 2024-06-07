package com.raisei.controller;

import com.raisei.pojo.Itinerary;
import com.raisei.pojo.Order;
import com.raisei.service.ItineraryService;
import com.raisei.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ItineraryService itineraryService;

    //user界面的订单删除
    @RequestMapping("/delete")
    public String deleteOrder(int orderId){
        orderService.deleteOrderById(orderId);
        return "redirect:itinerary";
    }

    //查询全部路线页面下的订购
    @RequestMapping("/add")
    public String addOrder(int itineraryId , int userId){
        //新增订单
        Order order = null;
        Itinerary itinerary = itineraryService.selectItineraryById(itineraryId);
        order.setItineraryId(itineraryId);
        order.setUserId(userId);
        order.setTeamId(itinerary.getTeam());
        orderService.addOrder(order);
        return "itinerary";
    }

}
