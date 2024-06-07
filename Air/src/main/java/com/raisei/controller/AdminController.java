package com.raisei.controller;

import com.raisei.pojo.Itinerary;
import com.raisei.pojo.Order;
import com.raisei.pojo.User;
import com.raisei.service.ItineraryService;
import com.raisei.service.OrderService;
import com.raisei.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@RequestMapping("admin")
@Controller
public class AdminController {

    @Autowired
    private UserService userService;
    @Autowired
    private ItineraryService itineraryService;
    @Autowired
    private OrderService orderService;

    @RequestMapping("allUsers")
    public String getAllUsers(Model model) {
        List<User> users = userService.queryAllUser();
        model.addAttribute("users",users);
        return "admin/admin";
    }


    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "userLogin";
    }

    @RequestMapping("/queryItinerary")
    public String queryItinerary(Model model){
        List<Itinerary> itineraries = itineraryService.queryAll();
        model.addAttribute("itineraries",itineraries);
        return "admin/admin";
    }

    @RequestMapping("/orders")
    public String queryOrder(Model model){
        List<Order> orders = orderService.queryAll();
        model.addAttribute("orders",orders);
        return "admin/admin";
    }

    @RequestMapping("/toAddItinerary")
    public String toAdd(){
        return "admin/itinerary";
    }

    @RequestMapping("/addItinerary")
    public String addItinerary(Itinerary itinerary){
        int i = itineraryService.addItinerary(itinerary);
        return "admin/admin";
    }

    @RequestMapping("/deleteItinerary")
    public String deleteItinerary(int id){
        int i = itineraryService.deleteById(id);
        return "admin/admin";
    }

}
