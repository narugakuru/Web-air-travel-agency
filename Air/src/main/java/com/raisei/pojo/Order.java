package com.raisei.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {
    private int orderId;
    private int userId;
    private int itineraryId;
    private int teamId;
}
