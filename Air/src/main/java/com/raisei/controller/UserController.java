package com.raisei.controller;

import com.raisei.pojo.Itinerary;
import com.raisei.pojo.User;
import com.raisei.service.ItineraryService;
import com.raisei.service.OrderService;
import com.raisei.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

@SessionAttributes("user")
@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private ItineraryService itineraryService;
    @Autowired
    private OrderService orderService;

    @RequestMapping("toRegister")
    public String toRegister() {
        return "user/register";
    }


    @RequestMapping("register")
    public String register(User user) {
        System.out.println("=======================");
        System.out.println("register========>" + user);
        System.out.println("=======================");
        return userService.registerUser(user);
    }


    @RequestMapping("toLogin")
    public String toLogin() {
        return "userLogin";
    }

    @RequestMapping("doLogin")
    public String userLogin(HttpSession session, String account, String password, Model model) {
        if (account.equals("admin")) {
            return userService.doLoginAdmin(session, account, password, model);
        }
        return userService.doLogin(session, account, password, model);
    }

    @RequestMapping("reUser")
    public String toUser(String account, ModelMap modelMap) {
        //查询用户
        User user = userService.selectUserByAccount(account);
        //查询一个用户的所有订单号
        List<Integer> orderIds = orderService.selectIdByUserId(user.getUserId());
        //查询一个用户的所有已订购路线
        List<Itinerary> itineraries = itineraryService.selectByUserId(user.getUserId());
        //将用户信息存入
        modelMap.addAttribute("user", user);
        modelMap.addAttribute("orderIds", orderIds);
        modelMap.addAttribute("itineraries", itineraries);
        return "user/user";
    }

    @RequestMapping("userMessage")
    public String userMassage() {
        return "user/user";
    }




}
