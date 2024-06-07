package com.raisei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Itinerary {
    private int itineraryId;
    private String date;
    private Double cost;
    private String origin;
    private String destination;
    private Integer team;
}
