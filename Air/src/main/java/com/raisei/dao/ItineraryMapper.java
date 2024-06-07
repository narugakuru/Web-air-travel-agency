package com.raisei.dao;

import com.raisei.pojo.Itinerary;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ItineraryMapper {

    Itinerary selectItineraryById(int itinerary_id);
    List<Itinerary> queryAll();
    //查询某个用户的订购的所有路线
    List<Itinerary> selectByUserId(int userId);

    int addItinerary(Itinerary itinerary);
    int deleteById(int id);
}
