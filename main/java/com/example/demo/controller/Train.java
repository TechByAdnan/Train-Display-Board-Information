package com.example.demo.controller;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Train {
	private Integer trainNo;
	private String trainName;
	private Integer platformNo;
	private String departureTime;
	private String arrivalTime;
	private String trainType;
}
