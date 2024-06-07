package com.raisei.controller;

import com.raisei.pojo.Itinerary;
import com.raisei.service.ItineraryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/itinerary")
public class ItineraryController {

    @Autowired
    private ItineraryService itineraryService;

    @RequestMapping("/queryAll")
    public String queryAllItinerary(int userId,Model model){
        List<Itinerary> itineraries = itineraryService.queryAll();
        model.addAttribute("itineraries",itineraries);
        return "user/user";
    }



}
