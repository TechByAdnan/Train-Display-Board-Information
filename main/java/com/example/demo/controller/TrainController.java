package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TrainController {

	@GetMapping("/train")
	public String getTrainDetails(Model model) {
		model.addAttribute("train1", new Train(54102, "CPA-PYGS PASSENGER", 8, "02:50 AM", "02:55 AM", "Passenger"));
		model.addAttribute("train2", new Train(12571, "ANVT HUMSAFAR", 7, "02:55 AM", "03:00 AM", "Superfast"));
		model.addAttribute("train3", new Train(12556, "GORAKHDHAM EXP", 9, "02:55 AM", "03:05 AM", "Superfast"));
		model.addAttribute("train4", new Train(14114, "DDN SFG EXP", 3, "03:05 AM", "03:10 AM", "Mail/Express"));
		model.addAttribute("train5", new Train(22409, "ANVT GARIB RATH", 1, "03:05 AM", "03:10 AM", "Garib Rath"));
		model.addAttribute("train6", new Train(22438, "PRYJ HUMSAFAR", 5, "03:25 AM", "03:30 AM", "Superfast"));
		model.addAttribute("train7", new Train(19038, "AVADH EXPRESS", 7, "03:31 AM", "03:32 AM", "Mail/Express"));
		model.addAttribute("train8", new Train(20942, "GCT BDTS SF EXP", 6, "03:32 AM", "03:33 AM", "Superfast"));
		return "train";

	}
}


